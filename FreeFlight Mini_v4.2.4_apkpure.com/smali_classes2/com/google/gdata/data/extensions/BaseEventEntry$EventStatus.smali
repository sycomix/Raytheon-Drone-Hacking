.class public Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;
.super Lcom/google/gdata/data/ValueConstruct;
.source "BaseEventEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/BaseEventEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStatus"
.end annotation


# static fields
.field public static final CANCELED:Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

.field public static final CANCELED_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.canceled"

.field public static final CONFIRMED:Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

.field public static final CONFIRMED_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.confirmed"

.field public static final TENTATIVE:Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

.field public static final TENTATIVE_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.tentative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    const-string v1, "http://schemas.google.com/g/2005#event.confirmed"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;->CONFIRMED:Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    .line 123
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    const-string v1, "http://schemas.google.com/g/2005#event.tentative"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;->TENTATIVE:Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    .line 126
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    const-string v1, "http://schemas.google.com/g/2005#event.canceled"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;->CANCELED:Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "eventStatus"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "eventStatus"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 131
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/BaseEventEntry$EventStatus;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 133
    const-string v1, "eventStatus"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 135
    return-object v0
.end method
