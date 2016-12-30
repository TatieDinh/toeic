from django.contrib import admin

# Register your models here.
from toeic.models import Type, WordType,TestType, Level, Topic, GrammarTopic, Test, Vocab, Question, Answer, ListeningTopic, VideoLessonType, VideoLesson, Dictation, Passage, PronunciationLesson, SpeakingQuestionType, SpeakingQuestion, SpeakingAnswer, SpeakingTopic, SpeakingLesson, SpeakingPractice, SpeakingPracticeType

class QuestionAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs', 'topics')
    # search_fields = ('name', 'description', 'keyword', )

class VideoLessonAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','dictations', 'questions')
    # search_fields = ('name', 'description', 'keyword', )

class PronunciationLessonAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','dictations')
    # search_fields = ('name', 'description', 'keyword', )

class PassageAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs', 'questions')
    # search_fields = ('name', 'description', 'keyword', )

class DicationAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs',)
    # search_fields = ('name', 'description', 'keyword', )

class SpeakingQuestionAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','speakinganswer',)
    search_fields = ('text', )

class SpeakingAnswerAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs',)
    # search_fields = ('text',)

class SpeakingLessonAdmin(admin.ModelAdmin):
    filter_horizontal = ('questions', 'vocabs')
    # search_fields = ('name', 'description', 'keyword', )

class SpeakingTopicAdmin(admin.ModelAdmin):
    filter_horizontal = ('testset',)
    # search_fields = ('name', 'description', 'keyword', )

class SpeakingPracticeAdmin(admin.ModelAdmin):
    filter_horizontal = ('questions','answers')
    # search_fields = ('name', 'description', 'keyword', )

# class VocabAdmin(admin.ModelAdmin):
    # search_fields = ('name', 'description', 'keyword', )

admin.site.register(Type)
admin.site.register(WordType)
admin.site.register(TestType)
admin.site.register(Level)
admin.site.register(Topic)
admin.site.register(Test)
admin.site.register(GrammarTopic)
admin.site.register(Vocab)
admin.site.register(Passage, PassageAdmin)
admin.site.register(ListeningTopic)
admin.site.register(VideoLessonType)
admin.site.register(Dictation, DicationAdmin)
admin.site.register(VideoLesson, VideoLessonAdmin)
admin.site.register(PronunciationLesson, PronunciationLessonAdmin)
# # admin.site.register(Audio)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Answer)
admin.site.register(SpeakingQuestionType)
admin.site.register(SpeakingQuestion,SpeakingQuestionAdmin)
admin.site.register(SpeakingAnswer,SpeakingAnswerAdmin)
admin.site.register(SpeakingTopic,SpeakingTopicAdmin)
admin.site.register(SpeakingPracticeType)
admin.site.register(SpeakingPractice,SpeakingPracticeAdmin)
admin.site.register(SpeakingLesson,SpeakingLessonAdmin)