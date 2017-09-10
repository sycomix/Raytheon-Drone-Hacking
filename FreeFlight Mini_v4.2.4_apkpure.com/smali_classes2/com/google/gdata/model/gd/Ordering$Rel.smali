.class public final Lcom/google/gdata/model/gd/Ordering$Rel;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final COMESAFTER:Ljava/lang/String; = "comesAfter"

.field public static final FIRST:Ljava/lang/String; = "first"

.field public static final LAST:Ljava/lang/String; = "last"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "comesAfter"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/Ordering$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/gdata/model/gd/Ordering$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
