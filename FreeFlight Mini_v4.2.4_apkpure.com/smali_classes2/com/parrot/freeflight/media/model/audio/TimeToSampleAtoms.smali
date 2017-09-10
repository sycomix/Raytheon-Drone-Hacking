.class public Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;
.super Ljava/lang/Object;
.source "TimeToSampleAtoms.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSampleCountList:Ljava/util/List;
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

.field private final mSampleDurationList:Ljava/util/List;
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

.field private maxDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleCountList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleDurationList:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2
    .param p1, "sampleCount"    # I
    .param p2, "sampleDuration"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleCountList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleDurationList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    mul-int v1, p2, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    .line 35
    return-void
.end method

.method public getMaxDuration()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    return v0
.end method

.method public getSample(I)I
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 53
    if-lez p1, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    if-le p1, v2, :cond_3

    .line 54
    :cond_0
    if-nez p1, :cond_2

    move v0, v1

    .line 65
    :cond_1
    :goto_0
    return v0

    .line 57
    :cond_2
    sget-object v1, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time searched out of bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleDurationList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p1, v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleCountList:Ljava/util/List;

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
    const-string v3, "SampleToTime size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, ", max duration="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v3, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->maxDuration:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 78
    .local v2, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 79
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleCountList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->mSampleDurationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/TimeToSampleAtoms;->size()I

    move-result v2

    goto :goto_0

    .line 87
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
