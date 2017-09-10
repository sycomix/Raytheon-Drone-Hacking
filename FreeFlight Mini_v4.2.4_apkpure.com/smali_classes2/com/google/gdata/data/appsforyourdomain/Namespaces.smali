.class public Lcom/google/gdata/data/appsforyourdomain/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final APPS:Ljava/lang/String; = "http://schemas.google.com/apps/2006"

.field public static final APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final APPS_PREFIX:Ljava/lang/String; = "http://schemas.google.com/apps/2006#"

.field public static final DELIVERY_TIME_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006/rel/deliveryTime"

.field public static final DESTINATION_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006/rel/destinationAccount"

.field public static final EMAILLISTRECIPIENT_WHO_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006#emailList.recipient"

.field public static final EMAILLIST_RECIPIENT_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006#emailList.recipients"

.field public static final MIGRATION_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006/rel/migration"

.field public static final OWNER_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006/rel/owner"

.field public static final TRANSFER_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006/rel/migration/transfer"

.field public static final USER_EMAILLIST_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006#user.emailLists"

.field public static final USER_NICKNAME_REL:Ljava/lang/String; = "http://schemas.google.com/apps/2006#user.nicknames"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "apps"

    const-string v2, "http://schemas.google.com/apps/2006"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method
