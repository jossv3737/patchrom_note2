.class public final enum Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;
.super Ljava/lang/Enum;
.source "CoCoreFunctionInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/CoCoreFunctionInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Complex:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

.field public static final enum Normal:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

.field public static final enum SubScript:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

.field public static final enum SuperScript:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 673
    new-instance v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    const-string v1, "Complex"

    invoke-direct {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->Complex:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    new-instance v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->Normal:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    new-instance v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    const-string v1, "SuperScript"

    invoke-direct {v0, v1, v4}, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->SuperScript:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    new-instance v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    const-string v1, "SubScript"

    invoke-direct {v0, v1, v5}, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->SubScript:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    .line 671
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->Complex:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->Normal:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->SuperScript:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->SubScript:Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->ENUM$VALUES:[Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 671
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    return-object v0
.end method

.method public static values()[Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;->ENUM$VALUES:[Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/common/CoCoreFunctionInterface$FontPosition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
