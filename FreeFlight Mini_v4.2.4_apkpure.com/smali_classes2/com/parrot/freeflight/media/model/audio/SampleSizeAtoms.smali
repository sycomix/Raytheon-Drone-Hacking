.class public Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;
.super Ljava/lang/Object;
.source "SampleSizeAtoms.java"


# instance fields
.field private final mSampleCount:I

.field private final mSampleSize:I

.field private final mSampleSizesList:Ljava/util/List;
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
.method public constructor <init>(II)V
    .locals 1
    .param p1, "sampleSize"    # I
    .param p2, "sampleCount"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSizesList:Ljava/util/List;

    .line 21
    iput p1, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSize:I

    .line 22
    iput p2, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleCount:I

    .line 23
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .param p1, "sampleSize"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSizesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public getSampleCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleCount:I

    return v0
.end method

.method public getSampleSize(I)I
    .locals 2
    .param p1, "sample"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSize:I

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSizesList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 37
    :cond_0
    if-lez p1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleCount:I

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_1

    .line 38
    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSize:I

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStaticSampleSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSize:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSizesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "SampleSizes size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, ", sampleSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v3, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 62
    .local v2, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 63
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->mSampleSizesList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/SampleSizeAtoms;->size()I

    move-result v2

    goto :goto_0

    .line 69
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
