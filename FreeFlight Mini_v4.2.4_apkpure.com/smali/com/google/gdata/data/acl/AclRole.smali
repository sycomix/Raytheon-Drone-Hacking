.class public Lcom/google/gdata/data/acl/AclRole;
.super Lcom/google/gdata/data/ValueConstruct;
.source "AclRole.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "role"
    nsAlias = "gAcl"
    nsUri = "http://schemas.google.com/acl/2007"
.end annotation


# static fields
.field public static final COMMENTER:Lcom/google/gdata/data/acl/AclRole;

.field public static final NONE:Lcom/google/gdata/data/acl/AclRole;

.field public static final OWNER:Lcom/google/gdata/data/acl/AclRole;

.field public static final PEEKER:Lcom/google/gdata/data/acl/AclRole;

.field public static final READER:Lcom/google/gdata/data/acl/AclRole;

.field static final ROLE:Ljava/lang/String; = "role"

.field private static final VALUE:Ljava/lang/String; = "value"

.field public static final WRITER:Lcom/google/gdata/data/acl/AclRole;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclRole;->NONE:Lcom/google/gdata/data/acl/AclRole;

    .line 42
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    const-string v1, "peeker"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclRole;->PEEKER:Lcom/google/gdata/data/acl/AclRole;

    .line 48
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    const-string v1, "reader"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclRole;->READER:Lcom/google/gdata/data/acl/AclRole;

    .line 54
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    const-string/jumbo v1, "writer"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclRole;->WRITER:Lcom/google/gdata/data/acl/AclRole;

    .line 60
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    const-string v1, "owner"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclRole;->OWNER:Lcom/google/gdata/data/acl/AclRole;

    .line 66
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    const-string v1, "commenter"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/acl/AclRole;->COMMENTER:Lcom/google/gdata/data/acl/AclRole;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/google/gdata/data/acl/AclNamespace;->gAclNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "role"

    const-string/jumbo v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
