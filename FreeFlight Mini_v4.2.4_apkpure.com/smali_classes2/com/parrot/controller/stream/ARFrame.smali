.class public Lcom/parrot/controller/stream/ARFrame;
.super Lcom/parrot/arsdk/arsal/ARNativeData;
.source "ARFrame.java"


# static fields
.field private static final ARFRAME_DEFAULT_CAPACITY:I = 0xea60


# instance fields
.field private available:Z

.field private isIFrame:Z

.field private missed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    .line 16
    invoke-direct {p0}, Lcom/parrot/controller/stream/ARFrame;->initialize()V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "defaultCapacity"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arsal/ARNativeData;-><init>(I)V

    .line 22
    invoke-direct {p0}, Lcom/parrot/controller/stream/ARFrame;->initialize()V

    .line 23
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/parrot/controller/stream/ARFrame;->missed:I

    .line 28
    iput-boolean v0, p0, Lcom/parrot/controller/stream/ARFrame;->isIFrame:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/stream/ARFrame;->available:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getMissed()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/controller/stream/ARFrame;->missed:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/parrot/controller/stream/ARFrame;->available:Z

    return v0
.end method

.method public isIFrame()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/parrot/controller/stream/ARFrame;->isIFrame:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/parrot/controller/stream/ARFrame;->available:Z

    .line 60
    return-void
.end method

.method public setIFrame(Z)V
    .locals 0
    .param p1, "isIFrame"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/parrot/controller/stream/ARFrame;->isIFrame:Z

    .line 50
    return-void
.end method

.method public setMissed(I)V
    .locals 0
    .param p1, "missed"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/parrot/controller/stream/ARFrame;->missed:I

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/parrot/arsdk/arsal/ARNativeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", missed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/controller/stream/ARFrame;->missed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/controller/stream/ARFrame;->isIFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/controller/stream/ARFrame;->available:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
