.class public final enum Lcom/google/gdata/data/contacts/CalendarLink$Rel;
.super Ljava/lang/Enum;
.source "CalendarLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/CalendarLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/contacts/CalendarLink$Rel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/contacts/CalendarLink$Rel;

.field public static final enum FREE_BUSY:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

.field public static final enum HOME:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

.field public static final enum WORK:Lcom/google/gdata/data/contacts/CalendarLink$Rel;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    const-string v1, "FREE_BUSY"

    const-string v2, "free-busy"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/contacts/CalendarLink$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->FREE_BUSY:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 78
    new-instance v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    const-string v1, "HOME"

    const-string v2, "home"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/contacts/CalendarLink$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->HOME:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 81
    new-instance v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    const-string v1, "WORK"

    const-string v2, "work"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/contacts/CalendarLink$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->WORK:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    sget-object v1, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->FREE_BUSY:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->HOME:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->WORK:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/CalendarLink$Rel;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->value:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/contacts/CalendarLink$Rel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/contacts/CalendarLink$Rel;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    invoke-virtual {v0}, [Lcom/google/gdata/data/contacts/CalendarLink$Rel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->value:Ljava/lang/String;

    return-object v0
.end method
