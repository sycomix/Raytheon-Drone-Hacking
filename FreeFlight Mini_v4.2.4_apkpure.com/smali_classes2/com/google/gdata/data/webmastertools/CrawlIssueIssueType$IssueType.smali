.class public final enum Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;
.super Ljava/lang/Enum;
.source "CrawlIssueIssueType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IssueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum HTTP_ERROR:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum IN_SITEMAP:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum NEWS_ERROR:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum NOT_FOLLOWED:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum NOT_FOUND:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum RESTRICTED_ROBOTS_TXT:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum TIMED_OUT:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

.field public static final enum UNREACHABLE:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "HTTP_ERROR"

    const-string v2, "http-error"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->HTTP_ERROR:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 57
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "IN_SITEMAP"

    const-string v2, "in-sitemap"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->IN_SITEMAP:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 60
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "NEWS_ERROR"

    const-string v2, "news-error"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->NEWS_ERROR:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 63
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "NOT_FOLLOWED"

    const-string v2, "not-followed"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->NOT_FOLLOWED:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 66
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "NOT_FOUND"

    const-string v2, "not-found"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->NOT_FOUND:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 69
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "RESTRICTED_ROBOTS_TXT"

    const/4 v2, 0x5

    const-string v3, "restricted-robots-txt"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->RESTRICTED_ROBOTS_TXT:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 72
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "TIMED_OUT"

    const/4 v2, 0x6

    const-string v3, "timed-out"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->TIMED_OUT:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 75
    new-instance v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    const-string v1, "UNREACHABLE"

    const/4 v2, 0x7

    const-string v3, "unreachable"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->UNREACHABLE:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->HTTP_ERROR:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->IN_SITEMAP:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->NEWS_ERROR:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->NOT_FOLLOWED:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->NOT_FOUND:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->RESTRICTED_ROBOTS_TXT:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->TIMED_OUT:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->UNREACHABLE:Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->$VALUES:[Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->value:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->$VALUES:[Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    invoke-virtual {v0}, [Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/CrawlIssueIssueType$IssueType;->value:Ljava/lang/String;

    return-object v0
.end method
