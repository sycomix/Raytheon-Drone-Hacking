.class public final enum Lcom/crittercism/internal/bp;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/crittercism/internal/bp;

.field public static final enum b:Lcom/crittercism/internal/bp;

.field public static final enum c:Lcom/crittercism/internal/bp;

.field public static final enum d:Lcom/crittercism/internal/bp;

.field public static final enum e:Lcom/crittercism/internal/bp;

.field public static final enum f:Lcom/crittercism/internal/bp;

.field public static final enum g:Lcom/crittercism/internal/bp;

.field public static final enum h:Lcom/crittercism/internal/bp;

.field public static final enum i:Lcom/crittercism/internal/bp;

.field public static final enum j:Lcom/crittercism/internal/bp;

.field public static final enum k:Lcom/crittercism/internal/bp;

.field private static final synthetic r:[Lcom/crittercism/internal/bp;


# instance fields
.field l:Ljava/lang/String;

.field m:I

.field n:I

.field o:Lcom/crittercism/internal/bq$a;

.field p:Lcom/crittercism/internal/ch;

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 8
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "APP_LOADS"

    const/4 v2, 0x0

    const-string v3, "app_loads_2"

    const/16 v4, 0xa

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/by$a;

    invoke-direct {v7}, Lcom/crittercism/internal/by$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->a:Lcom/crittercism/internal/bp;

    .line 15
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "HAND_EXCS"

    const/4 v2, 0x1

    const-string v3, "exceptions"

    const/4 v4, 0x5

    const/16 v5, 0x32

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/by$a;

    invoke-direct {v7}, Lcom/crittercism/internal/by$a;-><init>()V

    const-string v8, "exceptions"

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->b:Lcom/crittercism/internal/bp;

    .line 22
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "INTERNAL_EXCS"

    const/4 v2, 0x2

    const-string v3, "internal_excs"

    const/4 v4, 0x3

    const/4 v5, 0x3

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/by$a;

    invoke-direct {v7}, Lcom/crittercism/internal/by$a;-><init>()V

    const-string v8, "exceptions"

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->c:Lcom/crittercism/internal/bp;

    .line 29
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "NDK_CRASHES"

    const/4 v2, 0x3

    const-string v3, "ndk_crashes"

    const/4 v4, 0x5

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/by$a;

    invoke-direct {v7}, Lcom/crittercism/internal/by$a;-><init>()V

    const-string v8, "crashes"

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->d:Lcom/crittercism/internal/bp;

    .line 36
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "SDK_CRASHES"

    const/4 v2, 0x4

    const-string v3, "sdk_crashes"

    const/4 v4, 0x5

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/by$a;

    invoke-direct {v7}, Lcom/crittercism/internal/by$a;-><init>()V

    const-string v8, "crashes"

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->e:Lcom/crittercism/internal/bp;

    .line 43
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "CURR_BCS"

    const/4 v2, 0x5

    const-string v3, "current_bcs"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/bx$a;

    invoke-direct {v7}, Lcom/crittercism/internal/bx$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->f:Lcom/crittercism/internal/bp;

    .line 50
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "NW_BCS"

    const/4 v2, 0x6

    const-string v3, "network_bcs"

    const/16 v4, 0xa

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/bx$a;

    invoke-direct {v7}, Lcom/crittercism/internal/bx$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->g:Lcom/crittercism/internal/bp;

    .line 57
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "PREV_BCS"

    const/4 v2, 0x7

    const-string v3, "previous_bcs"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/bx$a;

    invoke-direct {v7}, Lcom/crittercism/internal/bx$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->h:Lcom/crittercism/internal/bp;

    .line 64
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "STARTED_TXNS"

    const/16 v2, 0x8

    const-string v3, "started_txns"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/bx$a;

    invoke-direct {v7}, Lcom/crittercism/internal/bx$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->i:Lcom/crittercism/internal/bp;

    .line 71
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "FINISHED_TXNS"

    const/16 v2, 0x9

    const-string v3, "finished_txns"

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/bx$a;

    invoke-direct {v7}, Lcom/crittercism/internal/bx$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->j:Lcom/crittercism/internal/bp;

    .line 80
    new-instance v0, Lcom/crittercism/internal/bp;

    const-string v1, "SYSTEM_BCS"

    const/16 v2, 0xa

    const-string/jumbo v3, "system_bcs"

    const/16 v4, 0x64

    const v5, 0x7fffffff

    new-instance v6, Lcom/crittercism/internal/bq$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/crittercism/internal/bq$a;-><init>(I)V

    new-instance v7, Lcom/crittercism/internal/bx$a;

    invoke-direct {v7}, Lcom/crittercism/internal/bx$a;-><init>()V

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bp;-><init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bp;->k:Lcom/crittercism/internal/bp;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/crittercism/internal/bp;

    const/4 v1, 0x0

    sget-object v2, Lcom/crittercism/internal/bp;->a:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/crittercism/internal/bp;->b:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/crittercism/internal/bp;->c:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/crittercism/internal/bp;->d:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/crittercism/internal/bp;->e:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/crittercism/internal/bp;->f:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crittercism/internal/bp;->g:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crittercism/internal/bp;->h:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crittercism/internal/bp;->i:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crittercism/internal/bp;->j:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/crittercism/internal/bp;->k:Lcom/crittercism/internal/bp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crittercism/internal/bp;->r:[Lcom/crittercism/internal/bp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILcom/crittercism/internal/bq$a;Lcom/crittercism/internal/ch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/crittercism/internal/bp;->l:Ljava/lang/String;

    .line 103
    iput p4, p0, Lcom/crittercism/internal/bp;->m:I

    .line 104
    iput p5, p0, Lcom/crittercism/internal/bp;->n:I

    .line 105
    iput-object p6, p0, Lcom/crittercism/internal/bp;->o:Lcom/crittercism/internal/bq$a;

    .line 106
    iput-object p7, p0, Lcom/crittercism/internal/bp;->p:Lcom/crittercism/internal/ch;

    .line 107
    iput-object p8, p0, Lcom/crittercism/internal/bp;->q:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crittercism/internal/bp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/crittercism/internal/bp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bp;

    return-object v0
.end method

.method public static values()[Lcom/crittercism/internal/bp;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/crittercism/internal/bp;->r:[Lcom/crittercism/internal/bp;

    invoke-virtual {v0}, [Lcom/crittercism/internal/bp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crittercism/internal/bp;

    return-object v0
.end method
