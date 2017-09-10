.class public Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "CrawlIssueEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/webmasters/tools/2007#crawl_issue_entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#crawl_issue_entry"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/webmasters/tools/2007#crawl_issue_entry"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addLinkedFrom(Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;)V
    .locals 1
    .param p1, "linkedFrom"    # Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getLinkedFroms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getCrawlType()Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;

    return-object v0
.end method

.method public getDateDetected()Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;

    return-object v0
.end method

.method public getDetail()Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;

    return-object v0
.end method

.method public getIssueType()Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;

    return-object v0
.end method

.method public getLinkedFroms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;
    .locals 1

    .prologue
    .line 238
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;

    return-object v0
.end method

.method public hasCrawlType()Z
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDateDetected()Z
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDetail()Z
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasIssueType()Z
    .locals 1

    .prologue
    .line 202
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLinkedFroms()Z
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 260
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setCrawlType(Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;)V
    .locals 1
    .param p1, "crawlType"    # Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->removeExtension(Ljava/lang/Class;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDateDetected(Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;)V
    .locals 1
    .param p1, "dateDetected"    # Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDateDetected;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->removeExtension(Ljava/lang/Class;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDetail(Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;)V
    .locals 1
    .param p1, "detail"    # Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueDetail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->removeExtension(Ljava/lang/Class;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setIssueType(Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;)V
    .locals 1
    .param p1, "issueType"    # Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->removeExtension(Ljava/lang/Class;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUrl(Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;)V
    .locals 1
    .param p1, "url"    # Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->removeExtension(Ljava/lang/Class;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CrawlIssueEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
