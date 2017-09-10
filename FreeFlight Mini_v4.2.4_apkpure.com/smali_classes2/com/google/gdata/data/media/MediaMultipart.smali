.class public Lcom/google/gdata/data/media/MediaMultipart;
.super Ljavax/mail/internet/MimeMultipart;
.source "MediaMultipart.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

.field protected mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/media/MediaMultipart;->LOGGER:Ljava/util/logging/Logger;

    .line 48
    invoke-static {}, Lcom/google/gdata/data/media/MediaMultipart;->loadMimeMappings()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaSource;)V
    .locals 1
    .param p1, "entry"    # Lcom/google/gdata/data/IEntry;
    .param p2, "media"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "related"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v0, "entry"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "media"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Lcom/google/gdata/data/IEntry;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 127
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/MediaMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 128
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Lcom/google/gdata/data/media/MediaSource;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 129
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/MediaMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v1, Lcom/google/gdata/data/media/MediaStreamSource;

    invoke-direct {v1, p2, p1}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaMultipart;->getCount()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 101
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Multipart must have Atom and media part"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    sget-object v4, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v4}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, "atomFirst":Z
    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    sget-object v4, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v4}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "No Atom MIME body part found"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/media/MediaBodyPart;

    iput-object v1, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 111
    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/media/MediaBodyPart;

    iput-object v1, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 112
    return-void

    :cond_2
    move v1, v3

    .line 110
    goto :goto_0

    :cond_3
    move v3, v2

    .line 111
    goto :goto_1
.end method

.method public static loadMimeMappings()V
    .locals 8

    .prologue
    .line 60
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "application/atom+xml"

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-string v7, "application/rss+xml"

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-string v7, "application/json"

    aput-object v7, v1, v6

    .line 64
    .local v1, "CONTENT_TYPES":[Ljava/lang/String;
    const-string v0, ";; x-java-content-handler=com.google.gdata.data.media.GDataContentHandler"

    .line 67
    .local v0, "CONTENT_HANDLER":Ljava/lang/String;
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v3

    .line 68
    .local v3, "commandMap":Ljavax/activation/CommandMap;
    instance-of v6, v3, Ljavax/activation/MailcapCommandMap;

    if-eqz v6, :cond_2

    move-object v5, v3

    .line 69
    check-cast v5, Ljavax/activation/MailcapCommandMap;

    .line 70
    .local v5, "mailcapMap":Ljavax/activation/MailcapCommandMap;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_3

    .line 71
    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljavax/activation/MailcapCommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v2

    .line 72
    .local v2, "comm":[Ljavax/activation/CommandInfo;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_1

    .line 73
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";; x-java-content-handler=com.google.gdata.data.media.GDataContentHandler"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 70
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "comm":[Ljavax/activation/CommandInfo;
    .end local v4    # "i":I
    .end local v5    # "mailcapMap":Ljavax/activation/MailcapCommandMap;
    :cond_2
    sget-object v6, Lcom/google/gdata/data/media/MediaMultipart;->LOGGER:Ljava/util/logging/Logger;

    const-string v7, "Unable to find MailcapCommandMap, skipping dynamic mailcap config."

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 80
    :cond_3
    return-void
.end method


# virtual methods
.method public createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public getAtomPart()Lcom/google/gdata/data/media/MediaBodyPart;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    return-object v0
.end method

.method public getMediaPart()Lcom/google/gdata/data/media/MediaBodyPart;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    return-object v0
.end method
