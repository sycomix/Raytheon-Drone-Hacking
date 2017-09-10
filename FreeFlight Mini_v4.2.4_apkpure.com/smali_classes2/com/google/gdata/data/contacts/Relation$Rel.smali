.class public final enum Lcom/google/gdata/data/contacts/Relation$Rel;
.super Ljava/lang/Enum;
.source "Relation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/contacts/Relation$Rel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum ASSISTANT:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum BROTHER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum CHILD:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum DOMESTIC_PARTNER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum FATHER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum FRIEND:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum MANAGER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum MOTHER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum PARENT:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum PARTNER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum REFERRED_BY:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum RELATIVE:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum SISTER:Lcom/google/gdata/data/contacts/Relation$Rel;

.field public static final enum SPOUSE:Lcom/google/gdata/data/contacts/Relation$Rel;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "ASSISTANT"

    const-string v2, "assistant"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->ASSISTANT:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 69
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "BROTHER"

    const-string v2, "brother"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->BROTHER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 72
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "CHILD"

    const-string v2, "child"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->CHILD:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 75
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "DOMESTIC_PARTNER"

    const-string v2, "domestic-partner"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->DOMESTIC_PARTNER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 78
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "FATHER"

    const-string v2, "father"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->FATHER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 81
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "FRIEND"

    const/4 v2, 0x5

    const-string v3, "friend"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->FRIEND:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 84
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "MANAGER"

    const/4 v2, 0x6

    const-string v3, "manager"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->MANAGER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 87
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "MOTHER"

    const/4 v2, 0x7

    const-string v3, "mother"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->MOTHER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 90
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "PARENT"

    const/16 v2, 0x8

    const-string v3, "parent"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->PARENT:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 93
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "PARTNER"

    const/16 v2, 0x9

    const-string v3, "partner"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->PARTNER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 96
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "REFERRED_BY"

    const/16 v2, 0xa

    const-string v3, "referred-by"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->REFERRED_BY:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 99
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "RELATIVE"

    const/16 v2, 0xb

    const-string v3, "relative"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->RELATIVE:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 102
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "SISTER"

    const/16 v2, 0xc

    const-string v3, "sister"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->SISTER:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 105
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    const-string v1, "SPOUSE"

    const/16 v2, 0xd

    const-string v3, "spouse"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Relation$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->SPOUSE:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 63
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/gdata/data/contacts/Relation$Rel;

    sget-object v1, Lcom/google/gdata/data/contacts/Relation$Rel;->ASSISTANT:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/contacts/Relation$Rel;->BROTHER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/contacts/Relation$Rel;->CHILD:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/contacts/Relation$Rel;->DOMESTIC_PARTNER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/data/contacts/Relation$Rel;->FATHER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->FRIEND:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->MANAGER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->MOTHER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->PARENT:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->PARTNER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->REFERRED_BY:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->RELATIVE:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->SISTER:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/gdata/data/contacts/Relation$Rel;->SPOUSE:Lcom/google/gdata/data/contacts/Relation$Rel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Relation$Rel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lcom/google/gdata/data/contacts/Relation$Rel;->value:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/contacts/Relation$Rel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/contacts/Relation$Rel;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/gdata/data/contacts/Relation$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Relation$Rel;

    invoke-virtual {v0}, [Lcom/google/gdata/data/contacts/Relation$Rel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/contacts/Relation$Rel;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Relation$Rel;->value:Ljava/lang/String;

    return-object v0
.end method
