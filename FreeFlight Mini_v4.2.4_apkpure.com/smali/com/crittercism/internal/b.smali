.class public final enum Lcom/crittercism/internal/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/crittercism/internal/b;

.field public static final enum b:Lcom/crittercism/internal/b;

.field public static final enum c:Lcom/crittercism/internal/b;

.field public static final enum d:Lcom/crittercism/internal/b;

.field private static f:Landroid/util/SparseArray;

.field private static final synthetic g:[Lcom/crittercism/internal/b;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/crittercism/internal/b;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v2, v2}, Lcom/crittercism/internal/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crittercism/internal/b;->a:Lcom/crittercism/internal/b;

    .line 10
    new-instance v0, Lcom/crittercism/internal/b;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcom/crittercism/internal/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crittercism/internal/b;->b:Lcom/crittercism/internal/b;

    .line 11
    new-instance v0, Lcom/crittercism/internal/b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/crittercism/internal/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    .line 12
    new-instance v0, Lcom/crittercism/internal/b;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/crittercism/internal/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/crittercism/internal/b;

    sget-object v1, Lcom/crittercism/internal/b;->a:Lcom/crittercism/internal/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/crittercism/internal/b;->b:Lcom/crittercism/internal/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/crittercism/internal/b;->g:[Lcom/crittercism/internal/b;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    sput-object v0, Lcom/crittercism/internal/b;->f:Landroid/util/SparseArray;

    sget-object v1, Lcom/crittercism/internal/b;->a:Lcom/crittercism/internal/b;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/crittercism/internal/b;->f:Landroid/util/SparseArray;

    sget-object v1, Lcom/crittercism/internal/b;->b:Lcom/crittercism/internal/b;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/crittercism/internal/b;->e:I

    .line 26
    return-void
.end method

.method public static a(I)Lcom/crittercism/internal/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/crittercism/internal/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/b;

    .line 35
    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    .line 39
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crittercism/internal/b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/crittercism/internal/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/b;

    return-object v0
.end method

.method public static values()[Lcom/crittercism/internal/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/crittercism/internal/b;->g:[Lcom/crittercism/internal/b;

    invoke-virtual {v0}, [Lcom/crittercism/internal/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crittercism/internal/b;

    return-object v0
.end method
