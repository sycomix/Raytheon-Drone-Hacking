.class public Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;
.super Lcom/google/gdata/data/ValueConstruct;
.source "MessageEntry.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "subject"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/MessageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubjectExtension"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 264
    const-string v0, "subject"

    invoke-direct {p0, v0}, Lcom/google/gdata/data/ValueConstruct;-><init>(Ljava/lang/String;)V

    .line 265
    return-void
.end method