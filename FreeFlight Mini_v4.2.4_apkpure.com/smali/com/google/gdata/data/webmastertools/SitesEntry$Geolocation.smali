.class public Lcom/google/gdata/data/webmastertools/SitesEntry$Geolocation;
.super Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;
.source "SitesEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "geolocation"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitesEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geolocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 440
    const-string v0, "geolocation"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/RegionCodeValueConstruct;-><init>(Ljava/lang/String;)V

    .line 441
    return-void
.end method
