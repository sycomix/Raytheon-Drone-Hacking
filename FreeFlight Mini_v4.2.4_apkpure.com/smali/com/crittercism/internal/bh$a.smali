.class public final Lcom/crittercism/internal/bh$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 28
    sput v3, Lcom/crittercism/internal/bh$a;->a:I

    sput v0, Lcom/crittercism/internal/bh$a;->b:I

    .line 27
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/crittercism/internal/bh$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/crittercism/internal/bh$a;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/crittercism/internal/bh$a;->c:[I

    return-void
.end method
