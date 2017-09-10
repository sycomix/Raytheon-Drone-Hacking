.class public Lcom/sun/mail/handlers/text_plain;
.super Ljava/lang/Object;
.source "text_plain.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    sget-object v0, Lcom/sun/mail/handlers/text_plain;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/sun/mail/handlers/text_plain;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/handlers/text_plain;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const-string v2, "text/plain"

    const-string v3, "Text String"

    invoke-direct {v1, v0, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-void

    :cond_0
    sget-object v0, Lcom/sun/mail/handlers/text_plain;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    const-string v3, "charset"

    invoke-virtual {v1, v3}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 154
    const-string v0, "us-ascii"

    .line 155
    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 157
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    :goto_0
    return-object v3

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 11
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x40000

    const/4 v9, 0x0

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "enc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 81
    .local v4, "is":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    new-instance v4, Ljava/io/InputStreamReader;

    .end local v4    # "is":Ljava/io/InputStreamReader;
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .restart local v4    # "is":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 97
    .local v5, "pos":I
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 99
    .local v0, "buf":[C
    :cond_0
    :goto_0
    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-virtual {v4, v0, v5, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "count":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 100
    add-int/2addr v5, v1

    .line 101
    array-length v8, v0

    if-lt v5, v8, :cond_0

    .line 102
    array-length v6, v0

    .line 103
    .local v6, "size":I
    if-ge v6, v10, :cond_1

    .line 104
    add-int/2addr v6, v6

    .line 107
    :goto_1
    new-array v7, v6, [C

    .line 108
    .local v7, "tbuf":[C
    invoke-static {v0, v9, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    move-object v0, v7

    .line 110
    goto :goto_0

    .line 83
    .end local v0    # "buf":[C
    .end local v1    # "count":I
    .end local v4    # "is":Ljava/io/InputStreamReader;
    .end local v5    # "pos":I
    .end local v6    # "size":I
    .end local v7    # "tbuf":[C
    :catch_0
    move-exception v3

    .line 92
    .local v3, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v8, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 106
    .end local v3    # "iex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "buf":[C
    .restart local v1    # "count":I
    .restart local v4    # "is":Ljava/io/InputStreamReader;
    .restart local v5    # "pos":I
    .restart local v6    # "size":I
    :cond_1
    add-int/2addr v6, v10

    goto :goto_1

    .line 112
    .end local v6    # "size":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v8
.end method

.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public getTransferData(Ljava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "df"    # Ljava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    instance-of v4, p1, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" DataContentHandler requires String object, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "was given object of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "enc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 129
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/io/OutputStreamWriter;

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    invoke-direct {v2, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    move-object v3, p1

    .line 143
    check-cast v3, Ljava/lang/String;

    .line 144
    .local v3, "s":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 145
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 146
    return-void

    .line 131
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
