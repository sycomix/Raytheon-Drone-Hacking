.class final Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$1;
.super Ljava/lang/Object;
.source "CrawlIssueCrawlType.java"

# interfaces
.implements Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
        "<",
        "Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeValue(Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;)Ljava/lang/String;
    .locals 1
    .param p1, "enumValue"    # Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->toValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Enum;

    .prologue
    .line 41
    check-cast p1, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .end local p1    # "x0":Ljava/lang/Enum;
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$1;->getAttributeValue(Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
