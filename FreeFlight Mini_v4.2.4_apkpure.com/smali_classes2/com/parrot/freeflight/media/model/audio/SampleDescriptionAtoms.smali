.class public Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;
.super Ljava/lang/Object;
.source "SampleDescriptionAtoms.java"


# instance fields
.field public final mAudioSampleType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mNbChannels:I

.field public final mSampleRate:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "nbChannels"    # I
    .param p3, "audioSampleType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;->mAudioSampleType:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;->mNbChannels:I

    .line 20
    iput p1, p0, Lcom/parrot/freeflight/media/model/audio/SampleDescriptionAtoms;->mSampleRate:I

    .line 21
    return-void
.end method
