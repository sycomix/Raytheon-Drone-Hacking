.class public Lcom/google/gdata/client/blogger/BlogPostQuery;
.super Lcom/google/gdata/client/Query;
.source "BlogPostQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;
    }
.end annotation


# instance fields
.field private orderBy:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 31
    sget-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    iput-object v0, p0, Lcom/google/gdata/client/blogger/BlogPostQuery;->orderBy:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .line 71
    return-void
.end method


# virtual methods
.method public getOrderBy()Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/client/blogger/BlogPostQuery;->orderBy:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    return-object v0
.end method

.method public setOrderBy(Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;)V
    .locals 2
    .param p1, "orderBy"    # Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    sget-object p1, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/blogger/BlogPostQuery;->orderBy:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iput-object p1, p0, Lcom/google/gdata/client/blogger/BlogPostQuery;->orderBy:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .line 96
    const-string v1, "orderby"

    sget-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/blogger/BlogPostQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    return-void

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->toValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
