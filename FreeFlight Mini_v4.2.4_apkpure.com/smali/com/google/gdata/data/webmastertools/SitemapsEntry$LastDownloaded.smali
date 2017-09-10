.class public Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;
.super Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;
.source "SitemapsEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "sitemap-last-downloaded"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitemapsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastDownloaded"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "sitemap-last-downloaded"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;-><init>(Ljava/lang/String;)V

    .line 176
    return-void
.end method
