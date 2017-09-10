.class public Lcom/google/gdata/data/acl/AclNamespace;
.super Ljava/lang/Object;
.source "AclNamespace.java"


# static fields
.field public static final LINK_REL_ACCESS_CONTROL_LIST:Ljava/lang/String; = "http://schemas.google.com/acl/2007#accessControlList"

.field public static final LINK_REL_CONTROLLED_OBJECT:Ljava/lang/String; = "http://schemas.google.com/acl/2007#controlledObject"

.field public static final gAcl:Ljava/lang/String; = "http://schemas.google.com/acl/2007"

.field public static final gAclAlias:Ljava/lang/String; = "gAcl"

.field public static final gAclNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gAclPrefix:Ljava/lang/String; = "http://schemas.google.com/acl/2007#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gAcl"

    const-string v2, "http://schemas.google.com/acl/2007"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclNamespace;->gAclNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
