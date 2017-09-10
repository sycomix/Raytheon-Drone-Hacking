.class public Lcom/google/gdata/data/webmastertools/SitesEntry$Crawled;
.super Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;
.source "SitesEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "crawled"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitesEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Crawled"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "crawled"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;-><init>(Ljava/lang/String;)V

    .line 415
    return-void
.end method
