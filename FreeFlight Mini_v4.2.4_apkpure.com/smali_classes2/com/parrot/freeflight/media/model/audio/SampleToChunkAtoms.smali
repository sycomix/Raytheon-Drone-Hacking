.class public Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;
.super Ljava/lang/Object;
.source "SampleToChunkAtoms.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFirstChunkList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSamplePerChunkList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mSamplePerChunkList:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2
    .param p1, "firstChunk"    # I
    .param p2, "samplesPerChunk"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mSamplePerChunkList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getSampleInfo(I)Lcom/parrot/freeflight/media/model/audio/SampleInfo;
    .locals 8
    .param p1, "sample"    # I

    .prologue
    .line 43
    const/4 v5, 0x1

    if-ge p1, v5, :cond_0

    .line 44
    sget-object v5, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sample must be >0, here:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v5, 0x0

    .line 65
    :goto_0
    return-object v5

    .line 49
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 50
    .local v0, "chunk":I
    const/4 v3, 0x0

    .line 51
    .local v3, "samplePerChunk":I
    const/4 v1, 0x0

    .line 52
    .local v1, "i":I
    move v4, p1

    .line 54
    .local v4, "sampleRemaining":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    iget-object v5, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_2

    iget-object v5, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v0, :cond_2

    .line 56
    iget-object v5, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mSamplePerChunkList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 59
    :cond_2
    sub-int/2addr v4, v3

    .line 61
    if-gtz v4, :cond_1

    .line 63
    add-int v5, v3, v4

    add-int/lit8 v2, v5, -0x1

    .line 65
    .local v2, "sampleOffset":I
    new-instance v5, Lcom/parrot/freeflight/media/model/audio/SampleInfo;

    invoke-direct {v5, v0, v2, v3}, Lcom/parrot/freeflight/media/model/audio/SampleInfo;-><init>(III)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "SampleToChunk size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 76
    .local v2, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 77
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mFirstChunkList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->mSamplePerChunkList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/SampleToChunkAtoms;->size()I

    move-result v2

    goto :goto_0

    .line 85
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
