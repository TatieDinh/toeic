# Create your views here.

#import division
from __future__ import division

# import datetime
from django.utils import timezone
import operator
from collections import OrderedDict
from django.shortcuts import render
from .models import Topic, Test, Question, Answer, Vocab, UserVocab, UserAnswer, UserTest, GrammarTopic, UserAnswerGrammarQuiz, UserAnswerVideoLesson, UserDictation, VideoLesson, Dictation, PronunciationLesson, SpeakingAnswer, SpeakingQuestion, SpeakingTopic, SpeakingLesson, SpeakingPractice
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.forms import UserCreationForm
from .form import UserVocabForm, UserDictationForm, UserAnswerForm, UserAnswerGrammarQuizForm, SearchForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.utils.dateparse import parse_date

#import for db query
from django.db.models import Count, Max, Avg, Min, F, FloatField, Sum

# Create your views here.
def index(request):
    """The home page for toeic"""
    return render(request, 'toeic/index.html')

def vocab(request,vocab_id):
    """Show 1 word"""
    vocab = Vocab.objects.get(id=vocab_id)
    question = vocab.question_set.all().first()
    context = {'vocab': vocab, 'question': question}

    return render(request, 'toeic/vocab.html', context)

def tests(request):
    """Show all tests"""
    tests = Test.objects.filter(testType=1).order_by('date_added')
    context = {'tests': tests}
    return render(request, 'toeic/tests.html', context)

def practicetests(request):
    """Show all practicetests"""
    practicetests = Test.objects.filter(testType=2).order_by('date_added')
    context = {'tests': practicetests}
    return render(request, 'toeic/practicetests.html', context)

def topics(request):
    """Show all topics"""
    if request.method != 'POST':
        form = SearchForm()
    else:
        form = SearchForm(request.POST)
        if form.is_valid():
            word = form.cleaned_data['text']
            return HttpResponseRedirect(reverse('toeic:searchvocabresult', args=[word]))

    topics = Topic.objects.order_by('text')
    context = {'topics':topics, 'form':form}

    return render(request, 'toeic/topics.html', context)

def searchvocabresult(request, word):
    vocabs = Vocab.objects.filter(text__icontains=word)
    vocabsdict = OrderedDict()
    for vocab in vocabs:
        question = vocab.question_set.all().first()
        vocabsdict[vocab] = question

    context = {'vocabs':vocabsdict}
    return render(request, 'toeic/searchvocabresult.html', context)

def topic(request, topic_id):
    """show a single topic and all its vocabs"""
    topic = Topic.objects.get(id=topic_id)
    vocabs = topic.vocab_set.all()
    vocabsdict = OrderedDict()
    for vocab in vocabs:
        question = vocab.question_set.all().first()
        vocabsdict[vocab] = question
    context = {'topic': topic, 'vocabs':vocabsdict}
    return render(request, 'toeic/topic.html', context)

def checkvocab(request, topic_id):
    topic = Topic.objects.get(id=topic_id)
    vocabs = topic.vocab_set.all()
    vocabs_dict = {}
    if request.user.is_authenticated():
            currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for vocab in vocabs:
            form = UserVocabForm(prefix=vocab.id)
            vocabs_dict[vocab] = form
    else:
        try:
            lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserVocab.DoesNotExist:
            session = 1

        for vocab in vocabs:
            form = UserVocabForm(request.POST, prefix=vocab.id)
            if form.is_valid():
                new_uservocab = UserVocab()
                new_uservocab.session = session
                new_uservocab.user = currentUser
                new_uservocab.vocab = vocab
                new_uservocab.text = form.cleaned_data['text']
                new_uservocab.save(force_insert=True)
            vocabs_dict[vocab] = form

        return HttpResponseRedirect(reverse('toeic:resultvocab', kwargs={'topic_id':topic.id,'session': session}))

    context = {'topic': topic, 'vocabs':vocabs_dict}
    return render(request, 'toeic/checkvocab.html', context)

def resultvocab(request, topic_id, session):
    topic = Topic.objects.get(id=topic_id)
    vocabs = topic.vocab_set.all()
    vocabs_dict = {}
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        # lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
        # session = lastanswer.session
        user_uservocabs = UserVocab.objects.filter(user = currentUser.id).filter(session = session)
        for vocab in vocabs:
            # if UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).exists():
            #     user_uservocab = UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).latest("date_added")
            #     user_vocab = user_uservocab.text
            isanswer = False
            for user_uservocab in user_uservocabs:
                if user_uservocab.vocab == vocab:
                    user_vocab = user_uservocab.text
                    isanswer = True
            if isanswer == False:
                user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab
    except UserVocab.DoesNotExist:
        for vocab in vocabs:
            user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab

    context = {'topic': topic, 'vocabs':vocabs_dict}
    return render(request, 'toeic/resultvocab.html', context)

def checkvocabtest(request, test_id):
    test = Test.objects.get(id=test_id)
    questions = test.question_set.all()
    vocabs_list = []

    for question in questions:
        vocabs = question.vocabs.all()
        for vocab in vocabs:
            vocabs_list.append(vocab)

    vocabs_dict = {}

    if request.user.is_authenticated():
            currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for vocab in vocabs_list:
            form = UserVocabForm(prefix=vocab.id)
            vocabs_dict[vocab] = form
    else:
        try:
            lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserVocab.DoesNotExist:
            session = 1

        for vocab in vocabs_list:
            form = UserVocabForm(request.POST, prefix=vocab.id)
            if form.is_valid():
                new_uservocab = UserVocab()
                new_uservocab.session = session
                new_uservocab.typeOfTest = 2
                new_uservocab.user = currentUser
                new_uservocab.vocab = vocab
                new_uservocab.text = form.cleaned_data['text']
                new_uservocab.save(force_insert=True)
            vocabs_dict[vocab] = form
        return HttpResponseRedirect(reverse('toeic:resultvocabtest', args=[test.id]))

    context = {'test': test, 'vocabs':vocabs_dict}
    return render(request, 'toeic/checkvocabtest.html', context)

def resultvocabtest(request, test_id):
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    test = Test.objects.get(id=test_id)
    questions = test.question_set.all()
    vocabs_list = []
    for question in questions:
        vocabs = question.vocabs.all()
        for vocab in vocabs:
            vocabs_list.append(vocab)

    vocabs_dict = {}

    try:
        lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for vocab in vocabs:
            if UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).exists():
                user_uservocab = UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).latest("date_added")
                user_vocab = user_uservocab.text
            else:
                user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab
    except UserVocab.DoesNotExist:
        for vocab in vocabs:
            user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab

    context = {'test': test, 'vocabs':vocabs_dict}
    return render(request, 'toeic/resultvocabtest.html', context)

def test(request, test_id):
    test = Test.objects.get(id=test_id)
    questions = test.question_set.all()
    number_of_questions = questions.count()
    questions_dict = OrderedDict()
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if "start" in request.session:
        start = request.session["start"]
    else:
        start = timezone.now()
        request.session["start"] = start

    if request.method != 'POST':
        for question in questions:
            form = UserAnswerForm(question.id, prefix=question.id)
            questions_dict[question] = form
    else:
        finish = timezone.now()
        try:
            last_user = UserTest.objects.latest("session")
            session = last_user.session + 1
        except UserTest.DoesNotExist:
            session = 1
        score = 0
        new_userTest = UserTest()
        new_userTest.session = session
        new_userTest.test = test
        new_userTest.user = currentUser
        new_userTest.save(force_insert=True)
        for question in questions:
            iscorrect = False
            form = UserAnswerForm(question.id, request.POST, prefix=question.id)
            if form.is_valid():
                useranswer = form.cleaned_data['answer']
                question_id = question.id
                answers = question.answer_set.all()
                for answer in answers:
                    if answer.istrue == True and useranswer == answer:
                        iscorrect = True
                        score = score + 1
                new_useranswer = UserAnswer()
                new_useranswer.usertest = new_userTest
                new_useranswer.session = session
                new_useranswer.user = currentUser
                new_useranswer.question = question
                new_useranswer.test = test
                new_useranswer.answer = useranswer
                new_useranswer.is_correct = iscorrect
                new_useranswer.save(force_insert=True)
                request.session[question_id] = useranswer

        new_userTest.score = score
        new_userTest.percentage = score/(number_of_questions * 1.0)
        new_userTest.start = request.session["start"]
        del request.session["start"]
        new_userTest.finish = finish
        new_userTest.save()

        return HttpResponseRedirect(reverse('toeic:resulttest', kwargs={'test_id':test.id,'session_id': session}))

    context = {'test': test, 'questions':questions_dict}
    return render(request, 'toeic/test.html', context)

def resulttest(request, test_id, session_id):
    test = Test.objects.get(id=test_id)
    questions = test.question_set.all()
    questions_dict = OrderedDict()
    iscorrect = False
    rightanswers = 0
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    for question in questions:
        # if UserAnswer.objects.filter(user = currentUser.id).filter(session = session_id).filter(question = question.id).exists():
        #     user_useranswer = UserAnswer.objects.filter(user = currentUser.id).filter(session = session_id).filter(question = question.id)
        #     useranswer = user_useranswer.answer.text
        # else:
        #     useranswer = "Unknown"
        question_id = question.id
        if question_id in request.session:
            useranswer = request.session.get(question_id)
            del request.session[question_id]
        else:
            useranswer = 'unknown'
        answers = question.answer_set.all()
        for answer in answers:
            if answer.istrue == True and useranswer == answer:
                iscorrect = True
                rightanswers += 1
        grammar = GrammarTopic.objects.filter(question = question)
        vocabs = question.vocabs.all()
        questions_dict[question] = []
        questions_dict[question].append(answers)
        questions_dict[question].append(useranswer)
        questions_dict[question].append(grammar)
        questions_dict[question].append(iscorrect)
        questions_dict[question].append(vocabs)
        iscorrect = False

    context = {'test': test, 'questions':questions_dict, 'rightanswers':rightanswers}
    return render(request, 'toeic/resulttest.html', context)

def dashboard(request):
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))
    #query all grammar topics
    all_grammar_topics = GrammarTopic.objects.all()
    weak_topics =  OrderedDict()
    for each in all_grammar_topics:
        weak_topics[each] = 0

    # query all the questions user has done
    all_questions_done = UserAnswer.objects.filter(user = currentUser)
    # query the latest versions of the questions user has done
    all_latest_questions_done = all_questions_done.values('question_id').annotate(id=Max('id'))

    total_wrong_answers = 0
    for question_done in all_latest_questions_done:
        if UserAnswer.objects.get(id=question_done['id']).is_correct == False:
            total_wrong_answers = total_wrong_answers + 1
            question = Question.objects.get(id=question_done['question_id'])
            grammar_topics = question.grammartopics.all()
            for grammar_topic in grammar_topics:
                weak_topics[grammar_topic] = weak_topics[grammar_topic] + 1

    # query all tests
    all_tests = Test.objects.all()
    # query all the tests user has done
    all_tests_done = UserTest.objects.filter(user = currentUser)
    # query the latest versions of the tests user has done
    all_latest_tests_done = all_tests_done.values('test_id').annotate(id=Max('id')).order_by('date_added')
    tests_done = []
    highest_score = 0
    highest_percentage = 0
    total_percentage = 0
    for test_done in all_latest_tests_done:
        test = UserTest.objects.get(id=test_done['id'])
        if test.score > highest_score:
            highest_score = test.score
        if test.percentage > highest_percentage:
            highest_percentage = test.percentage
        total_percentage = total_percentage + test.percentage
        tests_done.append(test)
    number_tests = all_tests.count()
    number_tests_finished = len(tests_done)
    average_percentage = total_percentage/ number_tests_finished

    context = {'total_wrong_answers':total_wrong_answers, 'weak_topics':weak_topics,'tests_done': tests_done, 'number_tests':number_tests, 'number_tests_finished':number_tests_finished, 'highest_score': highest_score, 'highest_percentage': highest_percentage, 'average_percentage': average_percentage}
    return render(request, 'toeic/dashboard.html', context)

def logout_view(request):
    logout(request)
    return HttpResponseRedirect(reverse('toeic:index'))

def register(request):
    """Register a new user."""
    if request.method != 'POST':
        form = UserCreationForm()
    else:
        form = UserCreationForm(data = request.POST)

    if form.is_valid():
        new_user = form.save()
        authenticated_user = authenticate(username=new_user.username, password=request.POST['password1'])
        login(request, authenticated_user)
        return HttpResponseRedirect(reverse('toeic:index'))

    context = {'form': form}
    return render(request, 'users/register.html', context)

def grammartopics(request):
    """Show all tests"""
    grammars = GrammarTopic.objects.order_by('date_added')
    context = {'grammartopics': grammars}
    return render(request, 'toeic/grammartopics.html', context)

def grammartopic(request, grammartopic_id):
    grammar = GrammarTopic.objects.get(id=grammartopic_id)

    context = {'grammartopic': grammar}
    return render(request, 'toeic/grammartopic.html', context)

def grammartopicquiz(request, grammartopic_id):
    grammartopic = GrammarTopic.objects.get(id=grammartopic_id)
    questions = grammartopic.question_set.all()
    questions_dict = OrderedDict()
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for question in questions:
            form = UserAnswerForm(question.id, prefix=question.id)
            questions_dict[question] = form
    else:
        for question in questions:
            form = UserAnswerForm(question.id, request.POST, prefix=question.id)
            if form.is_valid():
                useranswer = form.cleaned_data['answer']
                question_id = question.id
                request.session[question_id] = useranswer

        return HttpResponseRedirect(reverse('toeic:resultgrammartopicquiz', args=[grammartopic.id]))

    context = {'grammartopic': grammartopic, 'questions':questions_dict}
    return render(request, 'toeic/grammartopicquiz.html', context)

def resultgrammartopicquiz(request, grammartopic_id):
    grammartopic = GrammarTopic.objects.get(id=grammartopic_id)
    questions = grammartopic.question_set.all()
    questions_dict = OrderedDict()
    iscorrect = False
    rightanswers = 0
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    for question in questions:
        question_id = question.id
        if question_id in request.session:
            useranswer = request.session.get(question_id)
            del request.session[question_id]
        else:
            useranswer = 'unknown'
        answers = question.answer_set.all()
        for answer in answers:
            if answer.istrue == True and useranswer == answer:
                iscorrect = True
                rightanswers += 1
        grammar = GrammarTopic.objects.filter(question = question)
        vocabs = question.vocabs.all()
        questions_dict[question] = []
        questions_dict[question].append(answers)
        questions_dict[question].append(useranswer)
        questions_dict[question].append(grammar)
        questions_dict[question].append(iscorrect)
        questions_dict[question].append(vocabs)
        iscorrect = False

    context = {'grammartopic': grammartopic, 'questions':questions_dict, 'rightanswers':rightanswers}
    return render(request, 'toeic/resultgrammartopicquiz.html', context)

def toeicpart3videos(request):
    """Show all videos"""
    videos = VideoLesson.objects.filter(videoType=1).order_by('id')
    context = {'videos': videos}
    return render(request, 'toeic/videos.html', context)

def toeicpart3video(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    vocabs = video.vocabs.all()
    questions = video.questions.all()
    #questions = sorted(unsortedquestions, key=operator.attrgetter('order'))

    questions_dict = OrderedDict()

    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for question in questions:
            form = UserAnswerForm(question.id, prefix=question.id)
            questions_dict[question] = form
    else:
        try:
            lastanswer = UserAnswerVideoLesson.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserAnswerVideoLesson.DoesNotExist:
            session = 1

        for question in questions:
            form = UserAnswerForm(question.id, request.POST, prefix=question.id)
            if form.is_valid():
                new_useranswer = UserAnswerVideoLesson()
                new_useranswer.session = session
                new_useranswer.user = currentUser
                new_useranswer.question = question
                new_useranswer.video = video
                new_useranswer.answer = form.cleaned_data['answer']
                new_useranswer.save(force_insert=True)
            questions_dict[question] = form

        return HttpResponseRedirect(reverse('toeic:resuttoeicvideo', args=[video.id]))


    context = {'video': video, 'questions': questions_dict, 'vocabs':vocabs}
    return render(request, 'toeic/video.html', context)


def resulttoeicvideo(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    vocabs = video.vocabs.all()
    questions = video.questions.all()
    questions_dict = OrderedDict()
    iscorrect = False
    rightanswers = 0
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        lastanswer = UserAnswerVideoLesson.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for question in questions:
            if UserAnswerVideoLesson.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).exists():
                user_useranswer = UserAnswerVideoLesson.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).latest("date_added")
                useranswer = user_useranswer.answer.text
            else:
                useranswer = "Unknown"
            answers = question.answer_set.all()
            for answer in answers:
                if answer.istrue == True and useranswer == answer.text:
                    iscorrect = True
                    rightanswers += 1
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(iscorrect)
            iscorrect = False

    except UserAnswerVideoLesson.DoesNotExist:
        for question in questions:
            useranswer = "Unknown"
            answers = question.answer_set.all()
            iscorrect = False
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(iscorrect)

    context = {'video': video, 'questions':questions_dict, 'rightanswers':rightanswers, 'vocabs':vocabs}
    return render(request, 'toeic/resultvideo.html', context)

def dictation(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    dictations = video.dictations.all().order_by('level')
    dictations_dict = OrderedDict()
    if request.user.is_authenticated():
            currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for dictation in dictations:
            form = UserDictationForm(prefix=dictation.id)
            vocab = dictation.vocabs.all().order_by('level')
            dictations_dict[dictation] = []
            dictations_dict[dictation].append(form)
            dictations_dict[dictation].append(vocab)
    else:
        try:
            lastanswer = UserDictation.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserDictation.DoesNotExist:
            session = 1

        for dictation in dictations:
            form = UserDictationForm(request.POST, prefix=dictation.id)
            if form.is_valid():
                new_userdictation = UserDictation()
                new_userdictation.user = currentUser
                new_userdictation.session = session
                new_userdictation.dictation = dictation
                new_userdictation.text = form.cleaned_data['text']
                new_userdictation.save(force_insert=True)

        return HttpResponseRedirect(reverse('toeic:resultdictation', args=[video.id]))

    context = {'video': video, 'dictations':dictations_dict}
    return render(request, 'toeic/dictation.html', context)

def resultdictation(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    dictations = video.dictations.all()
    dictations_dict = OrderedDict()
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        lastanswer = UserDictation.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for dictation in dictations:
            if UserDictation.objects.filter(user = currentUser.id).filter(session = session).filter(dictation = dictation.id).exists():
                user_userdictation = UserDictation.objects.filter(user = currentUser.id).filter(session = session).filter(dictation = dictation.id).latest("date_added")
                user_dictation = user_userdictation.text
            else:
                user_dictation = "Unknown"
            dictations_dict[dictation] = user_dictation
    except UserDictation.DoesNotExist:
         for dictation in dictations:
            user_dictation = "Unknown"
            dictations_dict[dictation] = user_dictation

    context = {'video': video, 'dictations':dictations_dict}
    return render(request, 'toeic/resultdictation.html', context)

def pronunciationlessons(request):
    """Show all lesson"""
    prounciationlessons = PronunciationLesson.objects.order_by('id')
    context = {'pronunciationlessons': prounciationlessons}
    return render(request, 'toeic/pronunciationlessons.html', context)

def pronunciationlesson(request, pronunciationlesson_id):
    pronunciationlesson = PronunciationLesson.objects.get(id=pronunciationlesson_id)
    vocabs = pronunciationlesson.vocabs.all()

    context = {'pronunciationlesson': pronunciationlesson, 'vocabs':vocabs}
    return render(request, 'toeic/pronunciationlesson.html', context)

def speakingtopics(request):
    speakingtopics = SpeakingTopic.objects.order_by('id')
    context = {'speakingtopics': speakingtopics}
    return render(request, 'toeic/speakingtopics.html', context)

def speakingtopic(request, speakingtopic_id):
    speakingtopic = SpeakingTopic.objects.get(id=speakingtopic_id)
    speakinglessons = SpeakingLesson.objects.filter(topic = speakingtopic.id).order_by('order')

    context = {'speakinglessons': speakinglessons, 'speakingtopic':speakingtopic}
    return render(request, 'toeic/speakingtopic.html', context)

def speakinglesson(request, speakingtopic_id, speakinglesson_id):
    speakinglesson = SpeakingLesson.objects.get(id=speakinglesson_id)
    speakingtopic = SpeakingTopic.objects.get(id=speakingtopic_id)
    questions = speakinglesson.questions.all()
    questions_dict = OrderedDict()
    for question in questions:
        answers = question.speakinganswer.all()
        questions_dict[question] = answers
    speakingpractices = SpeakingPractice.objects.filter(lesson = speakinglesson.id).order_by('order')
    remain = len(speakingpractices)
    vocabs = speakinglesson.vocabs.all()

    context = {'vocabs':vocabs, 'speakingtopic': speakingtopic, 'speakinglesson': speakinglesson,'remain' : remain, 'questions' : questions_dict}
    return render(request, 'toeic/speakinglesson.html', context)

def speakingpractice(request, speakingtopic_id, speakinglesson_id, remain):
    speakinglesson = SpeakingLesson.objects.get(id=speakinglesson_id)
    # nextspeakinglesson_id = speakinglesson_id + 1
    # nextspeakingtopic_id = speakingtopic_id + 1
    # if speakinglesson.islast == False:
    #     nextspeakinglesson = SpeakingLesson.objects.get(id=nextspeakinglesson_id)
    # else:
    #     nextspeakinglesson = None
    # if SpeakingTopic.objects.get(id=nextspeakingtopic_id).exists():
    #     nextspeakingtopic = SpeakingTopic.objects.get(id=nextspeakingtopic_id)
    # else:
    #     nextspeakingtopic = None
    speakingpractices = SpeakingPractice.objects.filter(lesson = speakinglesson_id).order_by('order')
    remain = int(remain)
    speakingpractice = speakingpractices[len(speakingpractices) - remain]
    remain = remain-1
    answers_dict = OrderedDict()
    answers = speakingpractice.answers.all()
    questions = speakingpractice.questions.all()
    if speakingpractice.practicetype.id == 1:
        for answer in answers:
            if answer.speakingquestion_set.filter(speakingpractice__id = speakingpractice.id).exists():
                question = answer.speakingquestion_set.filter(speakingpractice__id = speakingpractice.id).first()
                answers_dict[answer] = question
        answers_list = answers_dict.items()
        paginator = Paginator(answers_list, 1)
        page = request.GET.get('page')
        try:
            answers_list = paginator.page(page)
        except PageNotAnInteger:
            # If page is not an integer, deliver first page.
            answers_list = paginator.page(1)
        except EmptyPage:
            # If page is out of range (e.g. 9999), deliver last page of results.
            answers_list = paginator.page(paginator.num_pages)
    else:
        answers_list = []
        for question in questions:
            answers_list.append(question)
        for answer in answers:
            answers_list.append(answer)
        paginator = Paginator(answers_list, 1)
        page = request.GET.get('page')
        try:
            answers_list = paginator.page(page)
        except PageNotAnInteger:
            # If page is not an integer, deliver first page.
            answers_list = paginator.page(1)
        except EmptyPage:
            # If page is out of range (e.g. 9999), deliver last page of results.
            answers_list = paginator.page(paginator.num_pages)



    context = {'speakinglesson' : speakinglesson,'speakingtopic_id' : speakingtopic_id, 'speakingpractice': speakingpractice, 'remain' : remain, 'answers' : answers_list}
    return render(request, 'toeic/speakingpractice.html', context)
