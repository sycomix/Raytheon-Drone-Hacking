.class public Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery;
.super Lcom/google/gdata/client/Query;
.source "SidewikiEntryQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;
    }
.end annotation


# instance fields
.field private sortOrder:Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getSortOrder()Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery;->sortOrder:Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;

    return-object v0
.end method

.method public setSortOrder(Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;)V
    .locals 2
    .param p1, "sortOrder"    # Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery;->sortOrder:Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 94
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery;->sortOrder:Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;

    .line 95
    const-string v1, "sortorder"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery;->sortOrder:Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/client/sidewiki/SidewikiEntryQuery$SortOrder;->toValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
