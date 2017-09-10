.class public final enum Lcom/google/gdata/data/projecthosting/State$Value;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/projecthosting/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/projecthosting/State$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/projecthosting/State$Value;

.field public static final enum CLOSED:Lcom/google/gdata/data/projecthosting/State$Value;

.field public static final enum OPEN:Lcom/google/gdata/data/projecthosting/State$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/gdata/data/projecthosting/State$Value;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/projecthosting/State$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/projecthosting/State$Value;->CLOSED:Lcom/google/gdata/data/projecthosting/State$Value;

    .line 54
    new-instance v0, Lcom/google/gdata/data/projecthosting/State$Value;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/projecthosting/State$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/projecthosting/State$Value;->OPEN:Lcom/google/gdata/data/projecthosting/State$Value;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/projecthosting/State$Value;

    sget-object v1, Lcom/google/gdata/data/projecthosting/State$Value;->CLOSED:Lcom/google/gdata/data/projecthosting/State$Value;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/projecthosting/State$Value;->OPEN:Lcom/google/gdata/data/projecthosting/State$Value;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/projecthosting/State$Value;->$VALUES:[Lcom/google/gdata/data/projecthosting/State$Value;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/projecthosting/State$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/google/gdata/data/projecthosting/State$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/State$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/projecthosting/State$Value;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/gdata/data/projecthosting/State$Value;->$VALUES:[Lcom/google/gdata/data/projecthosting/State$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/projecthosting/State$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/projecthosting/State$Value;

    return-object v0
.end method
