.class public Lcom/sun/activation/viewers/ImageViewerCanvas;
.super Ljava/awt/Canvas;
.source "ImageViewerCanvas.java"


# instance fields
.field private canvas_image:Ljava/awt/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/awt/Canvas;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    .line 42
    return-void
.end method


# virtual methods
.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "d":Ljava/awt/Dimension;
    iget-object v1, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    if-nez v1, :cond_0

    .line 63
    new-instance v0, Ljava/awt/Dimension;

    .end local v0    # "d":Ljava/awt/Dimension;
    invoke-direct {v0, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    .line 69
    .restart local v0    # "d":Ljava/awt/Dimension;
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    .end local v0    # "d":Ljava/awt/Dimension;
    iget-object v1, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {v1, p0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    iget-object v2, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {v2, p0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    .restart local v0    # "d":Ljava/awt/Dimension;
    goto :goto_0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljava/awt/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {p1, v0, v1, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public setImage(Ljava/awt/Image;)V
    .locals 0
    .param p1, "new_image"    # Ljava/awt/Image;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    .line 50
    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewerCanvas;->invalidate()V

    .line 51
    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewerCanvas;->repaint()V

    .line 52
    return-void
.end method
