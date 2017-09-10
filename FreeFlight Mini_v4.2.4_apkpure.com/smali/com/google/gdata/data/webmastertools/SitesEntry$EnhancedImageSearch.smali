.class public Lcom/google/gdata/data/webmastertools/SitesEntry$EnhancedImageSearch;
.super Lcom/google/gdata/data/webmastertools/BoolValueConstruct;
.source "SitesEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "enhanced-image-search"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitesEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnhancedImageSearch"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 479
    const-string v0, "enhanced-image-search"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;-><init>(Ljava/lang/String;)V

    .line 480
    return-void
.end method
