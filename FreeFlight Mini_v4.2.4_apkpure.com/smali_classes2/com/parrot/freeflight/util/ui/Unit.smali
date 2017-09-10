.class public final enum Lcom/parrot/freeflight/util/ui/Unit;
.super Ljava/lang/Enum;
.source "Unit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/util/ui/Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/util/ui/Unit;

.field public static final enum DEGREE:Lcom/parrot/freeflight/util/ui/Unit;

.field public static final enum DEGREE_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

.field public static final enum METER:Lcom/parrot/freeflight/util/ui/Unit;

.field public static final enum METER_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

.field public static final enum SECOND:Lcom/parrot/freeflight/util/ui/Unit;


# instance fields
.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/parrot/freeflight/util/ui/Unit;

    const-string v1, "METER"

    const v2, 0x7f080332

    invoke-direct {v0, v1, v3, v2}, Lcom/parrot/freeflight/util/ui/Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/util/ui/Unit;->METER:Lcom/parrot/freeflight/util/ui/Unit;

    .line 9
    new-instance v0, Lcom/parrot/freeflight/util/ui/Unit;

    const-string v1, "METER_PER_SECOND"

    const v2, 0x7f0802e6

    invoke-direct {v0, v1, v4, v2}, Lcom/parrot/freeflight/util/ui/Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/util/ui/Unit;->METER_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    .line 10
    new-instance v0, Lcom/parrot/freeflight/util/ui/Unit;

    const-string v1, "DEGREE"

    const v2, 0x7f080157

    invoke-direct {v0, v1, v5, v2}, Lcom/parrot/freeflight/util/ui/Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/util/ui/Unit;->DEGREE:Lcom/parrot/freeflight/util/ui/Unit;

    .line 11
    new-instance v0, Lcom/parrot/freeflight/util/ui/Unit;

    const-string v1, "DEGREE_PER_SECOND"

    const v2, 0x7f080156

    invoke-direct {v0, v1, v6, v2}, Lcom/parrot/freeflight/util/ui/Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/util/ui/Unit;->DEGREE_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    .line 12
    new-instance v0, Lcom/parrot/freeflight/util/ui/Unit;

    const-string v1, "SECOND"

    const v2, 0x7f0804e8

    invoke-direct {v0, v1, v7, v2}, Lcom/parrot/freeflight/util/ui/Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/freeflight/util/ui/Unit;->SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/parrot/freeflight/util/ui/Unit;

    sget-object v1, Lcom/parrot/freeflight/util/ui/Unit;->METER:Lcom/parrot/freeflight/util/ui/Unit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/util/ui/Unit;->METER_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/util/ui/Unit;->DEGREE:Lcom/parrot/freeflight/util/ui/Unit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/util/ui/Unit;->DEGREE_PER_SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/util/ui/Unit;->SECOND:Lcom/parrot/freeflight/util/ui/Unit;

    aput-object v1, v0, v7

    sput-object v0, Lcom/parrot/freeflight/util/ui/Unit;->$VALUES:[Lcom/parrot/freeflight/util/ui/Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/parrot/freeflight/util/ui/Unit;->mResId:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/util/ui/Unit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/parrot/freeflight/util/ui/Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/util/ui/Unit;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/util/ui/Unit;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/parrot/freeflight/util/ui/Unit;->$VALUES:[Lcom/parrot/freeflight/util/ui/Unit;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/util/ui/Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/util/ui/Unit;

    return-object v0
.end method


# virtual methods
.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 23
    iget v0, p0, Lcom/parrot/freeflight/util/ui/Unit;->mResId:I

    return v0
.end method
