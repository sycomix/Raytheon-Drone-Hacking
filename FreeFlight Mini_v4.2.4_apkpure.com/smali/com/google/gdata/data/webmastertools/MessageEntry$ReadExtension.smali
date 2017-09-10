.class public Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;
.super Lcom/google/gdata/data/webmastertools/BoolValueConstruct;
.source "MessageEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "read"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/MessageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadExtension"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "read"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;-><init>(Ljava/lang/String;)V

    .line 291
    return-void
.end method
