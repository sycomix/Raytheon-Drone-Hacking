.class public Lcom/sun/activation/viewers/ImageViewer;
.super Ljava/awt/Panel;
.source "ImageViewer.java"

# interfaces
.implements Ljavax/activation/CommandObject;


# instance fields
.field private DEBUG:Z

.field private _dh:Ljavax/activation/DataHandler;

.field private canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

.field private image:Ljava/awt/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/awt/Panel;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    .line 41
    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    .line 42
    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->_dh:Ljavax/activation/DataHandler;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/activation/viewers/ImageViewer;->DEBUG:Z

    .line 51
    new-instance v0, Lcom/sun/activation/viewers/ImageViewerCanvas;

    invoke-direct {v0}, Lcom/sun/activation/viewers/ImageViewerCanvas;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    .line 52
    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/ImageViewer;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 53
    return-void
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 69
    new-instance v4, Ljava/awt/MediaTracker;

    invoke-direct {v4, p0}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    .line 70
    .local v4, "mt":Ljava/awt/MediaTracker;
    const/4 v1, 0x0

    .line 71
    .local v1, "bytes_read":I
    const/16 v5, 0x400

    new-array v2, v5, [B

    .line 72
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    invoke-virtual {v0, v2, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->getToolkit()Ljava/awt/Toolkit;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/awt/Toolkit;->createImage([B)Ljava/awt/Image;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    .line 81
    iget-object v5, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    invoke-virtual {v4, v5, v7}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V

    .line 84
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/awt/MediaTracker;->waitForID(I)V

    .line 85
    invoke-virtual {v4}, Ljava/awt/MediaTracker;->waitForAll()V

    .line 86
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/awt/MediaTracker;->statusID(IZ)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 87
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error occured in image loading = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/awt/MediaTracker;->getErrorsID(I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    iget-object v6, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    invoke-virtual {v5, v6}, Lcom/sun/activation/viewers/ImageViewerCanvas;->setImage(Ljava/awt/Image;)V

    .line 98
    iget-boolean v5, p0, Lcom/sun/activation/viewers/ImageViewer;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 99
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "calling invalidate"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :cond_2
    return-void

    .line 93
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error reading image data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public addNotify()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Ljava/awt/Panel;->addNotify()V

    .line 105
    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->invalidate()V

    .line 106
    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->validate()V

    .line 107
    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->doLayout()V

    .line 108
    return-void
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    invoke-virtual {v0}, Lcom/sun/activation/viewers/ImageViewerCanvas;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "verb"    # Ljava/lang/String;
    .param p2, "dh"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iput-object p2, p0, Lcom/sun/activation/viewers/ImageViewer;->_dh:Ljavax/activation/DataHandler;

    .line 60
    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/activation/viewers/ImageViewer;->setInputStream(Ljava/io/InputStream;)V

    .line 61
    return-void
.end method
