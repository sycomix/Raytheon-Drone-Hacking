.class public final enum Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;
.super Ljava/lang/Enum;
.source "BlogPostQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/blogger/BlogPostQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

.field public static final enum EDITED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

.field public static final enum PUBLISHED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

.field public static final enum UPDATED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    const-string v1, "EDITED"

    const-string v2, "edited"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->EDITED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .line 40
    new-instance v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    const-string v1, "PUBLISHED"

    const-string v2, "published"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .line 43
    new-instance v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    const-string v1, "UPDATED"

    const-string v2, "updated"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->UPDATED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    sget-object v1, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->EDITED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->UPDATED:Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->$VALUES:[Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->value:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->$VALUES:[Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    invoke-virtual {v0}, [Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/client/blogger/BlogPostQuery$OrderBy;->value:Ljava/lang/String;

    return-object v0
.end method
