.class public Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;
.super Ljava/lang/Object;
.source "ARCodecsDecodedFrame.java"


# instance fields
.field private componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

.field height:I

.field private isIFrame:Z

.field private missed:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    .line 16
    iput v1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->width:I

    .line 17
    iput v1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->height:I

    .line 18
    iput v1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->missed:I

    .line 19
    iput-boolean v1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->isIFrame:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->height:I

    return v0
.end method

.method public getMissed()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->missed:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->width:I

    return v0
.end method

.method public isIFrame()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->isIFrame:Z

    return v0
.end method

.method public setIsIFrame(Z)V
    .locals 0
    .param p1, "isIFrame"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->isIFrame:Z

    .line 55
    return-void
.end method

.method public setMissed(I)V
    .locals 0
    .param p1, "missed"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/parrot/arsdk/arcodecs/ARCodecsDecodedFrame;->missed:I

    .line 45
    return-void
.end method
