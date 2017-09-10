.class public Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;
.super Lcom/google/gdata/data/ValueConstruct;
.source "BaseEventEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/BaseEventEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transparency"
.end annotation


# static fields
.field public static final OPAQUE:Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

.field public static final OPAQUE_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.opaque"

.field public static final TRANSPARENT:Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

.field public static final TRANSPARENT_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.transparent"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    const-string v1, "http://schemas.google.com/g/2005#event.opaque"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;->OPAQUE:Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    .line 231
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    const-string v1, "http://schemas.google.com/g/2005#event.transparent"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;->TRANSPARENT:Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "transparency"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "transparency"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 235
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/BaseEventEntry$Transparency;

    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "transparency"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method
