.class public final enum Lcom/google/gdata/data/acl/AclScope$Type;
.super Ljava/lang/Enum;
.source "AclScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/acl/AclScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/acl/AclScope$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/acl/AclScope$Type;

.field public static final enum DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

.field public static final enum DOMAIN:Lcom/google/gdata/data/acl/AclScope$Type;

.field public static final enum GROUP:Lcom/google/gdata/data/acl/AclScope$Type;

.field public static final enum INVITE:Lcom/google/gdata/data/acl/AclScope$Type;

.field public static final enum USER:Lcom/google/gdata/data/acl/AclScope$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/gdata/data/acl/AclScope$Type;

    const-string v1, "INVITE"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/acl/AclScope$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->INVITE:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 57
    new-instance v0, Lcom/google/gdata/data/acl/AclScope$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/acl/AclScope$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->USER:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 58
    new-instance v0, Lcom/google/gdata/data/acl/AclScope$Type;

    const-string v1, "DOMAIN"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/acl/AclScope$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->DOMAIN:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 59
    new-instance v0, Lcom/google/gdata/data/acl/AclScope$Type;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/acl/AclScope$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->GROUP:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 60
    new-instance v0, Lcom/google/gdata/data/acl/AclScope$Type;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/acl/AclScope$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/acl/AclScope$Type;

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->INVITE:Lcom/google/gdata/data/acl/AclScope$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->USER:Lcom/google/gdata/data/acl/AclScope$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->DOMAIN:Lcom/google/gdata/data/acl/AclScope$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->GROUP:Lcom/google/gdata/data/acl/AclScope$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->$VALUES:[Lcom/google/gdata/data/acl/AclScope$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/acl/AclScope$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclScope$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/acl/AclScope$Type;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/gdata/data/acl/AclScope$Type;->$VALUES:[Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/acl/AclScope$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/acl/AclScope$Type;

    return-object v0
.end method
