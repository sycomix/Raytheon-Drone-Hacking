.class public Lcom/parrot/freeflight/media/model/audio/SampleInfo;
.super Ljava/lang/Object;
.source "SampleInfo.java"


# instance fields
.field public final mChunk:I

.field public final mOffsetInChunk:I

.field public final mSamplePerChunk:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "chunk"    # I
    .param p2, "offsetInChunk"    # I
    .param p3, "samplePerChunk"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/parrot/freeflight/media/model/audio/SampleInfo;->mChunk:I

    .line 14
    iput p2, p0, Lcom/parrot/freeflight/media/model/audio/SampleInfo;->mOffsetInChunk:I

    .line 15
    iput p3, p0, Lcom/parrot/freeflight/media/model/audio/SampleInfo;->mSamplePerChunk:I

    .line 16
    return-void
.end method
