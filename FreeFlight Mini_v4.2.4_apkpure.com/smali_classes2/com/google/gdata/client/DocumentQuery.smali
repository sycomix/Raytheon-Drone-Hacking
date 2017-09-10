.class public Lcom/google/gdata/client/DocumentQuery;
.super Lcom/google/gdata/client/Query;
.source "DocumentQuery.java"


# static fields
.field public static final DEFAULT_SORT_MODE:Ljava/lang/String; = "last-modified"

.field public static final LAST_MODIFIED_SORT:Ljava/lang/String; = "last-modified"

.field public static final LAST_VIEWED_SORT:Ljava/lang/String; = "last-viewed"

.field public static final ORDERBY:Ljava/lang/String; = "orderby"

.field public static final STARRED_SORT:Ljava/lang/String; = "starred"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TITLE_EXACT:Ljava/lang/String; = "title-exact"

.field public static final TITLE_SORT:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getSortMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "orderby"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/DocumentQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/DocumentQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTitleExact()Z
    .locals 1

    .prologue
    .line 99
    const-string v0, "title-exact"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/DocumentQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSortMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "orderby"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "orderby"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/DocumentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setTitleExact(Z)V
    .locals 2
    .param p1, "exact"    # Z

    .prologue
    .line 90
    const-string v1, "title-exact"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/DocumentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleQuery"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/DocumentQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
