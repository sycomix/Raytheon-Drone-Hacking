.class final enum Lcom/parrot/freeflight3/FrameResolver$Button;
.super Ljava/lang/Enum;
.source "FrameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/FrameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight3/FrameResolver$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_1:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_2:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_3:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_4:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_JOY_LEFT_MASK:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_JOY_RIGHT_MASK:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_L1:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_L2:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_R1:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_R2:Lcom/parrot/freeflight3/FrameResolver$Button;

.field public static final enum BUTTON_TAKEOFF:Lcom/parrot/freeflight3/FrameResolver$Button;


# instance fields
.field private final mask:I

.field private final remoteEvent:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_TAKEOFF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Button take off"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_TAKEOFF:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 16
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_1"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Button 1"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_1:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 17
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_2"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "Button 2"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_2:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 18
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_3"

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v5, "Button 3"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_3:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 19
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_4"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x10

    const-string v5, "Button 4"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_4:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 20
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_R1"

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0x20

    const-string v5, "Button R1"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_R1:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 21
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_R2"

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/16 v4, 0x40

    const-string v5, "Button R2"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_R2:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 22
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_L1"

    const/4 v2, 0x7

    const/16 v3, 0x9

    const/16 v4, 0x80

    const-string v5, "Button L1"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_L1:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 23
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_L2"

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0x100

    const-string v5, "Button L2"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_L2:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 24
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_JOY_LEFT_MASK"

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/16 v4, 0x200

    const-string v5, "Button joy left"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_JOY_LEFT_MASK:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 25
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    const-string v1, "BUTTON_JOY_RIGHT_MASK"

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/16 v4, 0x400

    const-string v5, "Button joy right"

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight3/FrameResolver$Button;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_JOY_RIGHT_MASK:Lcom/parrot/freeflight3/FrameResolver$Button;

    .line 14
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/parrot/freeflight3/FrameResolver$Button;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_TAKEOFF:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_1:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_2:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_3:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_4:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_R1:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_R2:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_L1:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_L2:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_JOY_LEFT_MASK:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight3/FrameResolver$Button;->BUTTON_JOY_RIGHT_MASK:Lcom/parrot/freeflight3/FrameResolver$Button;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->$VALUES:[Lcom/parrot/freeflight3/FrameResolver$Button;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "remoteEvent"    # I
    .param p4, "mask"    # I
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p4, p0, Lcom/parrot/freeflight3/FrameResolver$Button;->mask:I

    .line 34
    iput p3, p0, Lcom/parrot/freeflight3/FrameResolver$Button;->remoteEvent:I

    .line 35
    iput-object p5, p0, Lcom/parrot/freeflight3/FrameResolver$Button;->text:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight3/FrameResolver$Button;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/FrameResolver$Button;

    .prologue
    .line 14
    iget v0, p0, Lcom/parrot/freeflight3/FrameResolver$Button;->mask:I

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight3/FrameResolver$Button;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/FrameResolver$Button;

    .prologue
    .line 14
    iget v0, p0, Lcom/parrot/freeflight3/FrameResolver$Button;->remoteEvent:I

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight3/FrameResolver$Button;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/FrameResolver$Button;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight3/FrameResolver$Button;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight3/FrameResolver$Button;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/FrameResolver$Button;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight3/FrameResolver$Button;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/parrot/freeflight3/FrameResolver$Button;->$VALUES:[Lcom/parrot/freeflight3/FrameResolver$Button;

    invoke-virtual {v0}, [Lcom/parrot/freeflight3/FrameResolver$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight3/FrameResolver$Button;

    return-object v0
.end method
