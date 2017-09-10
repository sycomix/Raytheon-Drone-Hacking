.class public Lcom/parrot/engine3d/bitmaps/BitmapText;
.super Ljava/lang/Object;
.source "BitmapText.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mColor:I

.field private mIsVisible:Z

.field private mSize:I

.field private mText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textSize"    # I
    .param p3, "textColor"    # I
    .param p4, "textCenterX"    # I
    .param p5, "textCenterY"    # I
    .param p6, "isVisible"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mText:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mSize:I

    .line 25
    iput p3, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mColor:I

    .line 26
    iput p4, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterX:I

    .line 27
    iput p5, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterY:I

    .line 28
    iput-boolean p6, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mIsVisible:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterY:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mColor:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mSize:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mIsVisible:Z

    return v0
.end method

.method public setCenter(II)V
    .locals 0
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterX:I

    .line 74
    iput p2, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterY:I

    .line 75
    return-void
.end method

.method public setCenterX(I)V
    .locals 0
    .param p1, "centerX"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterX:I

    .line 62
    return-void
.end method

.method public setCenterY(I)V
    .locals 0
    .param p1, "centerY"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mCenterY:I

    .line 70
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mColor:I

    .line 46
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mSize:I

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mText:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/parrot/engine3d/bitmaps/BitmapText;->mIsVisible:Z

    .line 83
    return-void
.end method
