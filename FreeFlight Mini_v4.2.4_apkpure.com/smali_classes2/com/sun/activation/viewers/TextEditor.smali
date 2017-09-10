.class public Lcom/sun/activation/viewers/TextEditor;
.super Ljava/awt/Panel;
.source "TextEditor.java"

# interfaces
.implements Ljavax/activation/CommandObject;
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private DEBUG:Z

.field private _dh:Ljavax/activation/DataHandler;

.field private button_panel:Ljava/awt/Panel;

.field private data_ins:Ljava/io/InputStream;

.field private fis:Ljava/io/FileInputStream;

.field private panel_gb:Ljava/awt/GridBagLayout;

.field private save_button:Ljava/awt/Button;

.field private text_area:Ljava/awt/TextArea;

.field private text_buffer:Ljava/lang/String;

.field private text_file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 54
    invoke-direct {p0}, Ljava/awt/Panel;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    .line 40
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    .line 41
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    .line 42
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    .line 44
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_file:Ljava/io/File;

    .line 45
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_buffer:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->data_ins:Ljava/io/InputStream;

    .line 47
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->fis:Ljava/io/FileInputStream;

    .line 49
    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    .line 50
    iput-boolean v4, p0, Lcom/sun/activation/viewers/TextEditor;->DEBUG:Z

    .line 55
    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    .line 56
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextEditor;->setLayout(Ljava/awt/LayoutManager;)V

    .line 58
    new-instance v0, Ljava/awt/Panel;

    invoke-direct {v0}, Ljava/awt/Panel;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    .line 60
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Panel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 61
    new-instance v0, Ljava/awt/Button;

    const-string v1, "SAVE"

    invoke-direct {v0, v1}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    .line 62
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    invoke-virtual {v0, v1}, Ljava/awt/Panel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 63
    iget-object v2, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    move-object v0, p0

    move-object v1, p0

    move v5, v4

    move v7, v6

    move v8, v6

    move v9, v4

    invoke-direct/range {v0 .. v9}, Lcom/sun/activation/viewers/TextEditor;->addGridComponent(Ljava/awt/Container;Ljava/awt/Component;Ljava/awt/GridBagLayout;IIIIII)V

    .line 71
    new-instance v0, Ljava/awt/TextArea;

    const-string v1, "This is text"

    const/16 v2, 0x18

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3, v6}, Ljava/awt/TextArea;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    .line 74
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    invoke-virtual {v0, v6}, Ljava/awt/TextArea;->setEditable(Z)V

    .line 76
    iget-object v2, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p0

    move v5, v6

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/sun/activation/viewers/TextEditor;->addGridComponent(Ljava/awt/Container;Ljava/awt/Component;Ljava/awt/GridBagLayout;IIIIII)V

    .line 84
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    invoke-virtual {v0, p0}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 86
    return-void
.end method

.method private addGridComponent(Ljava/awt/Container;Ljava/awt/Component;Ljava/awt/GridBagLayout;IIIIII)V
    .locals 4
    .param p1, "cont"    # Ljava/awt/Container;
    .param p2, "comp"    # Ljava/awt/Component;
    .param p3, "mygb"    # Ljava/awt/GridBagLayout;
    .param p4, "gridx"    # I
    .param p5, "gridy"    # I
    .param p6, "gridw"    # I
    .param p7, "gridh"    # I
    .param p8, "weightx"    # I
    .param p9, "weighty"    # I

    .prologue
    .line 101
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 102
    .local v0, "c":Ljava/awt/GridBagConstraints;
    iput p4, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 103
    iput p5, v0, Ljava/awt/GridBagConstraints;->gridy:I

    .line 104
    iput p6, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 105
    iput p7, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 106
    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 107
    int-to-double v2, p9

    iput-wide v2, v0, Ljava/awt/GridBagConstraints;->weighty:D

    .line 108
    int-to-double v2, p8

    iput-wide v2, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 109
    const/16 v1, 0xa

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 110
    invoke-virtual {p3, p2, v0}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 111
    invoke-virtual {p1, p2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 112
    return-void
.end method

.method private performSaveOperation()V
    .locals 6

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 149
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 152
    :goto_0
    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    invoke-virtual {v3}, Ljava/awt/TextArea;->getText()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "buffer":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 156
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Invalid outputstream in TextEditor!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "not saving!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 162
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 163
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "TextEditor Save Operation failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "evt"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    if-ne v0, v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/sun/activation/viewers/TextEditor;->performSaveOperation()V

    .line 187
    :cond_0
    return-void
.end method

.method public addNotify()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Ljava/awt/Panel;->addNotify()V

    .line 173
    invoke-virtual {p0}, Lcom/sun/activation/viewers/TextEditor;->invalidate()V

    .line 174
    return-void
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

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
    .line 116
    iput-object p2, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    .line 117
    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextEditor;->setInputStream(Ljava/io/InputStream;)V

    .line 119
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
    .line 128
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 129
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 133
    .local v1, "bytes_read":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->text_buffer:Ljava/lang/String;

    .line 143
    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    iget-object v4, p0, Lcom/sun/activation/viewers/TextEditor;->text_buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    .line 144
    return-void
.end method
