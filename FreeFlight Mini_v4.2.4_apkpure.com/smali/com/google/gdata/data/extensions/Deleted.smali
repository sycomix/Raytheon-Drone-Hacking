.class public Lcom/google/gdata/data/extensions/Deleted;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Deleted.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "deleted"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "deleted"

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/AbstractExtension;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 37
    return-void
.end method
