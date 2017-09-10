.class public final enum Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
.super Ljava/lang/Enum;
.source "GmAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/GmAttributes$GmAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Importance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

.field public static final enum DEPRECATED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

.field public static final enum OPTIONAL:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

.field public static final enum RECOMMENDED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

.field public static final enum REQUIRED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;


# instance fields
.field private final xmlValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    new-instance v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    const-string v1, "REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->REQUIRED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 197
    new-instance v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    const-string v1, "RECOMMENDED"

    invoke-direct {v0, v1, v3}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->RECOMMENDED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 205
    new-instance v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    const-string v1, "OPTIONAL"

    invoke-direct {v0, v1, v4}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->OPTIONAL:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 211
    new-instance v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    const-string v1, "DEPRECATED"

    invoke-direct {v0, v1, v5}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->DEPRECATED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    sget-object v1, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->REQUIRED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->RECOMMENDED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->OPTIONAL:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->DEPRECATED:Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->$VALUES:[Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->xmlValue:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    return-object v0
.end method

.method public static values()[Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->$VALUES:[Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    invoke-virtual {v0}, [Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    return-object v0
.end method


# virtual methods
.method getXmlValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->xmlValue:Ljava/lang/String;

    return-object v0
.end method
