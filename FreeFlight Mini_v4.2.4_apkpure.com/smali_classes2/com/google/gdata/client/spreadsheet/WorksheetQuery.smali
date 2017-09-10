.class public Lcom/google/gdata/client/spreadsheet/WorksheetQuery;
.super Lcom/google/gdata/client/DocumentQuery;
.source "WorksheetQuery.java"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/gdata/client/DocumentQuery;-><init>(Ljava/net/URL;)V

    .line 39
    return-void
.end method
