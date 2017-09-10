.class public Lcom/google/gdata/data/acl/AdditionalRole;
.super Lcom/google/gdata/data/ValueConstruct;
.source "AdditionalRole.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "additionalRole"
    nsAlias = "gAcl"
    nsUri = "http://schemas.google.com/acl/2007"
.end annotation


# static fields
.field public static final APPENDER:Lcom/google/gdata/data/acl/AdditionalRole;

.field public static final COMMENTER:Lcom/google/gdata/data/acl/AdditionalRole;

.field public static final EXECUTER:Lcom/google/gdata/data/acl/AdditionalRole;

.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "additionalRole"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/data/acl/AdditionalRole;

    const-string v1, "appender"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AdditionalRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AdditionalRole;->APPENDER:Lcom/google/gdata/data/acl/AdditionalRole;

    .line 43
    new-instance v0, Lcom/google/gdata/data/acl/AdditionalRole;

    const-string v1, "commenter"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AdditionalRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AdditionalRole;->COMMENTER:Lcom/google/gdata/data/acl/AdditionalRole;

    .line 49
    new-instance v0, Lcom/google/gdata/data/acl/AdditionalRole;

    const-string v1, "executer"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AdditionalRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AdditionalRole;->EXECUTER:Lcom/google/gdata/data/acl/AdditionalRole;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/acl/AdditionalRole;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/google/gdata/data/acl/AclNamespace;->gAclNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "additionalRole"

    const-string/jumbo v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 83
    const-class v1, Lcom/google/gdata/data/acl/AdditionalRole;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 85
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 87
    return-object v0
.end method
