.class public Lcom/google/gdata/data/webmastertools/SitesEntry$PreferredDomain;
.super Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;
.source "SitesEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "preferred-domain"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitesEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredDomain"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 466
    const-string v0, "preferred-domain"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;-><init>(Ljava/lang/String;)V

    .line 467
    return-void
.end method
