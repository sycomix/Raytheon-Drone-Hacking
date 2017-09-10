.class public final enum Lcom/google/gdata/data/sidewiki/Usefulness$Value;
.super Ljava/lang/Enum;
.source "Usefulness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/sidewiki/Usefulness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/sidewiki/Usefulness$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/sidewiki/Usefulness$Value;

.field public static final enum LESSUSEFUL:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

.field public static final enum USEFUL:Lcom/google/gdata/data/sidewiki/Usefulness$Value;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    const-string v1, "LESSUSEFUL"

    const-string v2, "lessUseful"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/sidewiki/Usefulness$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->LESSUSEFUL:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .line 57
    new-instance v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    const-string v1, "USEFUL"

    const-string v2, "useful"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/sidewiki/Usefulness$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->USEFUL:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    sget-object v1, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->LESSUSEFUL:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->USEFUL:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->$VALUES:[Lcom/google/gdata/data/sidewiki/Usefulness$Value;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->value:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/sidewiki/Usefulness$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/sidewiki/Usefulness$Value;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->$VALUES:[Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/sidewiki/Usefulness$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->value:Ljava/lang/String;

    return-object v0
.end method
