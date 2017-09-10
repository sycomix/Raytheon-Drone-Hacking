.class Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "FormUploadToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/FormUploadToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseElementHandler"
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/youtube/FormUploadToken$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/youtube/FormUploadToken$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->token:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "url"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$1;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$1;-><init>(Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;)V

    .line 118
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const-string v0, "token"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$2;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler$2;-><init>(Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/data/youtube/FormUploadToken$ResponseElementHandler;->url:Ljava/lang/String;

    return-object v0
.end method
