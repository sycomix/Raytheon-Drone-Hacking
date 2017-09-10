.class public Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;
.super Ljava/lang/Object;
.source "ChunkOffsetAtoms.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChunkOffsetList:Ljava/util/List;
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
    .line 10
    const-class v0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->mChunkOffsetList:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "chunkOffset"    # Ljava/lang/Integer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->mChunkOffsetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public getChunkOffsetInMdat(I)I
    .locals 3
    .param p1, "chunk"    # I

    .prologue
    .line 32
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 33
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChunkOffsetInMdat: out of bounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, -0x1

    .line 36
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->mChunkOffsetList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->mChunkOffsetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "ChunkOffsetTable size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 46
    .local v2, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 47
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->mChunkOffsetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/audio/ChunkOffsetAtoms;->size()I

    move-result v2

    goto :goto_0

    .line 53
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
