package com.javaweb.repository.custom.impl;

import com.javaweb.entity.HotelEntity;
import com.javaweb.model.request.HotelSearchRequest;
import com.javaweb.repository.custom.HotelRepositoryCustom;
import com.javaweb.utils.StringUtils;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.List;

@Repository
@Primary
public class HotelRepositoryImpl implements HotelRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;

    private void buildJoin(HotelSearchRequest hotelSearchRequest, StringBuilder join) {
        if (hotelSearchRequest.getStaffId() != null) {
            join.append(" join assignmenthotel ab on h.id = ab.hotelid ");
        }
    }

    private void buildCondition(HotelSearchRequest hotelSearchRequest, StringBuilder where) {
        try {
            Field[] field = HotelSearchRequest.class.getDeclaredFields();
            for (Field item : field) {
                item.setAccessible(true);
                String key = item.getName();
                if (!key.equals("staffId") && !key.startsWith("rentPrice") && !key.startsWith("floorArea")) {
                    Object value = item.get(hotelSearchRequest);
                    if (value != null && !value.equals("")) {
                        if (StringUtils.isNumber(value)) {
                            where.append(" AND h. " + key + "=" + value.toString());
                        } else {
                            where.append(" AND h. " + key + " like '%" + value.toString() + "%'");
                        }
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (hotelSearchRequest.getStaffId() != null) {
            where.append(" AND ab.staffid = " + hotelSearchRequest.getStaffId());
        }
        if (hotelSearchRequest.getFloorAreaFrom() != null) {
            where.append(" AND h.floorArea >= " + hotelSearchRequest.getFloorAreaFrom());
        }
        if (hotelSearchRequest.getFloorAreaTo() != null) {
            where.append(" AND h.floorArea <= " + hotelSearchRequest.getFloorAreaTo());
        }
        if (hotelSearchRequest.getRentPriceFrom() != null) {
            where.append(" AND h.rentprice >= " + hotelSearchRequest.getRentPriceFrom());
        }
        if (hotelSearchRequest.getRentPriceTo() != null) {
            where.append(" AND h.rentprice <= " + hotelSearchRequest.getRentPriceTo());
        }

    }

    @Override
    public List<HotelEntity> findAll(HotelSearchRequest hotelSearchRequest) {
        StringBuilder sqlbase = new StringBuilder("SELECT DISTINCT h.* FROM hotel h ");
        StringBuilder where = new StringBuilder(" WHERE 1=1 ");
        buildJoin(hotelSearchRequest, sqlbase);
        buildCondition(hotelSearchRequest, where);
        sqlbase.append(where);
        Query query = entityManager.createNativeQuery(sqlbase.toString(), HotelEntity.class);
        return query.getResultList();
    }

}
