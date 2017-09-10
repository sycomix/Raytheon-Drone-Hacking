.class public Lcom/google/gdata/data/youtube/ComplaintEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ComplaintEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#complaint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/ComplaintEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/complaint-reasons.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/ComplaintEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 43
    const-string v0, "http://gdata.youtube.com/schemas/2007#complaint"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    const-string v0, "http://gdata.youtube.com/schemas/2007#complaint"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public addVideoUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/google/gdata/data/Link;

    invoke-direct {v0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 59
    .local v0, "link":Lcom/google/gdata/data/Link;
    const-string v1, "related"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setRel(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setType(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setHref(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ComplaintEntry;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 101
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ComplaintEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gdata/data/TextContent;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ComplaintEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/TextContent;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextContent;->getContent()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    const-string v1, "related"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/data/youtube/ComplaintEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 72
    .local v0, "link":Lcom/google/gdata/data/Link;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/ComplaintEntry;->setContent(Lcom/google/gdata/data/TextConstruct;)V

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
