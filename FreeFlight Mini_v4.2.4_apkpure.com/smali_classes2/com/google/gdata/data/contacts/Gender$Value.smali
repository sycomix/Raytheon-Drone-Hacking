.class public final enum Lcom/google/gdata/data/contacts/Gender$Value;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/contacts/Gender$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/contacts/Gender$Value;

.field public static final enum FEMALE:Lcom/google/gdata/data/contacts/Gender$Value;

.field public static final enum MALE:Lcom/google/gdata/data/contacts/Gender$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/gdata/data/contacts/Gender$Value;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/contacts/Gender$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Gender$Value;->FEMALE:Lcom/google/gdata/data/contacts/Gender$Value;

    .line 56
    new-instance v0, Lcom/google/gdata/data/contacts/Gender$Value;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/contacts/Gender$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Gender$Value;->MALE:Lcom/google/gdata/data/contacts/Gender$Value;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/contacts/Gender$Value;

    sget-object v1, Lcom/google/gdata/data/contacts/Gender$Value;->FEMALE:Lcom/google/gdata/data/contacts/Gender$Value;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/contacts/Gender$Value;->MALE:Lcom/google/gdata/data/contacts/Gender$Value;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/contacts/Gender$Value;->$VALUES:[Lcom/google/gdata/data/contacts/Gender$Value;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/contacts/Gender$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/google/gdata/data/contacts/Gender$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Gender$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/contacts/Gender$Value;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/gdata/data/contacts/Gender$Value;->$VALUES:[Lcom/google/gdata/data/contacts/Gender$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/contacts/Gender$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/contacts/Gender$Value;

    return-object v0
.end method
