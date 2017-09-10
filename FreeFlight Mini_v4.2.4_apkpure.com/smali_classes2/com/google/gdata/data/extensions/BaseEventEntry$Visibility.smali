.class public Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;
.super Lcom/google/gdata/data/ValueConstruct;
.source "BaseEventEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/BaseEventEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visibility"
.end annotation


# static fields
.field public static final CONFIDENTIAL:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

.field public static final CONFIDENTIAL_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.confidential"

.field public static final DEFAULT:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

.field public static final DEFAULT_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.default"

.field public static final PRIVATE:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

.field public static final PRIVATE_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.private"

.field public static final PUBLIC:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

.field public static final PUBLIC_VALUE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.public"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    const-string v1, "http://schemas.google.com/g/2005#event.default"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;->DEFAULT:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    .line 182
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    const-string v1, "http://schemas.google.com/g/2005#event.public"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;->PUBLIC:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    .line 185
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    const-string v1, "http://schemas.google.com/g/2005#event.confidential"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;->CONFIDENTIAL:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    .line 188
    new-instance v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    const-string v1, "http://schemas.google.com/g/2005#event.private"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;->PRIVATE:Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 160
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "visibility"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "visibility"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 192
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/BaseEventEntry$Visibility;

    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "visibility"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method
