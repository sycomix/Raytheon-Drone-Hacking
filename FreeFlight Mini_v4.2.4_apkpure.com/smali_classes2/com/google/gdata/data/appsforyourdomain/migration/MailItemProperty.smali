.class public Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;
.super Lcom/google/gdata/data/ValueConstruct;
.source "MailItemProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field public static final DRAFT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

.field private static EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription; = null

.field private static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "mailItemProperty"

.field public static final INBOX:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

.field public static final SENT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

.field public static final STARRED:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

.field public static final TRASH:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

.field public static final UNREAD:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_DRAFT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->DRAFT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .line 56
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_INBOX:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->INBOX:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .line 63
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_SENT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->SENT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .line 70
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_TRASH:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->TRASH:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .line 77
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_STARRED:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->STARRED:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .line 84
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_UNREAD:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->UNREAD:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    .line 96
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    .line 99
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 100
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 101
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-string v1, "mailItemProperty"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "mailItemProperty"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;)V
    .locals 4
    .param p1, "value"    # Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .prologue
    .line 118
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "mailItemProperty"

    const-string v2, "value"

    invoke-virtual {p1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    return-object v0
.end method
