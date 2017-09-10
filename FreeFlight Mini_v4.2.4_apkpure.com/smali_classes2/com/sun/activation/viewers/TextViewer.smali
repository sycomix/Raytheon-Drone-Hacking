.class public Lcom/sun/activation/viewers/TextViewer;
.super Ljava/awt/Panel;
.source "TextViewer.java"

# interfaces
.implements Ljavax/activation/CommandObject;


# instance fields
.field private DEBUG:Z

.field private _dh:Ljavax/activation/DataHandler;

.field private text_area:Ljava/awt/TextArea;

.field private text_buffer:Ljava/lang/String;

.field private text_file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/awt/Panel;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    .line 40
    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_file:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_buffer:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->_dh:Ljavax/activation/DataHandler;

    .line 44
    iput-boolean v5, p0, Lcom/sun/activation/viewers/TextViewer;->DEBUG:Z

    .line 49
    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0, v4, v4}, Ljava/awt/GridLayout;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextViewer;->setLayout(Ljava/awt/LayoutManager;)V

    .line 51
    new-instance v0, Ljava/awt/TextArea;

    const-string v1, ""

    const/16 v2, 0x18

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/TextArea;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    .line 53
    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    invoke-virtual {v0, v5}, Ljava/awt/TextArea;->setEditable(Z)V

    .line 55
    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextViewer;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 56
    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Ljava/awt/Panel;->addNotify()V

    .line 92
    invoke-virtual {p0}, Lcom/sun/activation/viewers/TextViewer;->invalidate()V

    .line 93
    return-void
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    const/16 v1, 0x18

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Ljava/awt/TextArea;->getMinimumSize(II)Ljava/awt/Dimension;

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
    .line 60
    iput-object p2, p0, Lcom/sun/activation/viewers/TextViewer;->_dh:Ljavax/activation/DataHandler;

    .line 61
    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextViewer;->setInputStream(Ljava/io/InputStream;)V

    .line 62
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "bytes_read":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 76
    .local v2, "data":[B
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/activation/viewers/TextViewer;->text_buffer:Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    iget-object v4, p0, Lcom/sun/activation/viewers/TextViewer;->text_buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    .line 88
    return-void
.end method
