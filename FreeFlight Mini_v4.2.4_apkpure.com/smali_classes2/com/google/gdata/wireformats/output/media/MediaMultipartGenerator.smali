.class public Lcom/google/gdata/wireformats/output/media/MediaMultipartGenerator;
.super Ljava/lang/Object;
.source "MediaMultipartGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/output/OutputGenerator",
        "<",
        "Lcom/google/gdata/data/media/MediaMultipart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/media/MediaMultipart;)V
    .locals 6
    .param p1, "contentStream"    # Ljava/io/OutputStream;
    .param p2, "request"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "source"    # Lcom/google/gdata/data/media/MediaMultipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "prevProperties":Lcom/google/gdata/wireformats/output/OutputProperties;
    :try_start_0
    invoke-static {p2}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object v2

    .line 58
    invoke-virtual {p3, p1}, Lcom/google/gdata/data/media/MediaMultipart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {v2}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;

    .line 74
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 62
    .local v1, "me":Ljavax/mail/MessagingException;
    :try_start_1
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 63
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 64
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v1    # "me":Ljavax/mail/MessagingException;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;

    throw v4

    .line 68
    .restart local v1    # "me":Ljavax/mail/MessagingException;
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Invalid multipart content"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v4, Lcom/google/gdata/util/InvalidEntryException;

    const-string v5, "Invalid media entry"

    invoke-direct {v4, v5, v1}, Lcom/google/gdata/util/InvalidEntryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public bridge synthetic generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    check-cast p3, Lcom/google/gdata/data/media/MediaMultipart;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/media/MediaMultipartGenerator;->generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/media/MediaMultipart;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/media/MediaMultipart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/google/gdata/data/media/MediaMultipart;

    return-object v0
.end method
