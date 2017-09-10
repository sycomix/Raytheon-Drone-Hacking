.class public final enum Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;
.super Ljava/lang/Enum;
.source "CrawlIssueCrawlType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrawlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

.field public static final enum MOBILE_CHTML_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

.field public static final enum MOBILE_OPERATOR_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

.field public static final enum MOBILE_XHTML_WML_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

.field public static final enum NEWS_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

.field public static final enum WEB_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    const-string v1, "MOBILE_CHTML_CRAWL"

    const-string v2, "mobile-cHTML-crawl"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->MOBILE_CHTML_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .line 57
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    const-string v1, "MOBILE_OPERATOR_CRAWL"

    const-string v2, "mobile-operator-crawl"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->MOBILE_OPERATOR_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .line 60
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    const-string v1, "MOBILE_XHTML_WML_CRAWL"

    const-string v2, "mobile-XHTML-WML-crawl"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->MOBILE_XHTML_WML_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .line 63
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    const-string v1, "NEWS_CRAWL"

    const-string v2, "news-crawl"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->NEWS_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .line 66
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    const-string v1, "WEB_CRAWL"

    const-string v2, "web-crawl"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->WEB_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->MOBILE_CHTML_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->MOBILE_OPERATOR_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->MOBILE_XHTML_WML_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->NEWS_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->WEB_CRAWL:Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->$VALUES:[Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->value:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->$VALUES:[Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    invoke-virtual {v0}, [Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/CrawlIssueCrawlType$CrawlType;->value:Ljava/lang/String;

    return-object v0
.end method
