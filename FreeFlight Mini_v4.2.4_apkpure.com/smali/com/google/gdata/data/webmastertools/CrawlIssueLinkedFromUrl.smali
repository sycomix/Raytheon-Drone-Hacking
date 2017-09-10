.class public Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;
.super Lcom/google/gdata/data/ValueConstruct;
.source "CrawlIssueLinkedFromUrl.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "linked-from"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "linked-from"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "linkedFromUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "linked-from"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;->setRequired(Z)V

    .line 52
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 91
    const-class v1, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 94
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 96
    return-object v0
.end method


# virtual methods
.method public getLinkedFromUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLinkedFromUrl()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;->hasValue()Z

    move-result v0

    return v0
.end method

.method public setLinkedFromUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkedFromUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;->setValue(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CrawlIssueLinkedFromUrl linkedFromUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/CrawlIssueLinkedFromUrl;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
